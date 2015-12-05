json.array!(@fooditems) do |fooditem|
  json.extract! fooditem, :id, :name, :description, :price, :img_url, :section_id
  json.url fooditem_url(fooditem, format: :json)
end
