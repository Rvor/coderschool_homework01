class HomeController < ApplicationController
  def index
  end

  def menu
    @sections = Section.all
    @fooditems = Fooditem.where(:section => params[:section]||=1)
     
    if params[:fooditem]
      @currentfooditem = Fooditem.find(params[:fooditem])
    else
      @currentfooditem = @fooditems.first 
    end 

  end

  def contact
  end
end
