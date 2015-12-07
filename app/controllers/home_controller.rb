class HomeController < ApplicationController
  def index
  end

  def menu
    @sections = Section.all
    @section = params[:section]||Section.first
    @fooditems = Fooditem.search(@section, params[:search])
     
    if params[:fooditem]
      @currentfooditem = Fooditem.find(params[:fooditem])
    else
      @currentfooditem = @fooditems.first 
    end 

  end

  def contact
  end
end
