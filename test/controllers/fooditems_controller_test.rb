require 'test_helper'

class FooditemsControllerTest < ActionController::TestCase
  setup do
    @fooditem = fooditems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fooditems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fooditem" do
    assert_difference('Fooditem.count') do
      post :create, fooditem: { description: @fooditem.description, img_url: @fooditem.img_url, name: @fooditem.name, price: @fooditem.price, section_id: @fooditem.section_id }
    end

    assert_redirected_to fooditem_path(assigns(:fooditem))
  end

  test "should show fooditem" do
    get :show, id: @fooditem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fooditem
    assert_response :success
  end

  test "should update fooditem" do
    patch :update, id: @fooditem, fooditem: { description: @fooditem.description, img_url: @fooditem.img_url, name: @fooditem.name, price: @fooditem.price, section_id: @fooditem.section_id }
    assert_redirected_to fooditem_path(assigns(:fooditem))
  end

  test "should destroy fooditem" do
    assert_difference('Fooditem.count', -1) do
      delete :destroy, id: @fooditem
    end

    assert_redirected_to fooditems_path
  end
end
