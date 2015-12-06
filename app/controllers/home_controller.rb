class HomeController < ApplicationController
  def index
  end

  def menu
    @sections = Section.all
    @fooditems = Fooditem.search(params[:section]||=1, params[:search])
     
    if params[:fooditem]
      @currentfooditem = Fooditem.find(params[:fooditem])
    else
      @currentfooditem = @fooditems.first 
    end 

  end

  def contact
  end
end
