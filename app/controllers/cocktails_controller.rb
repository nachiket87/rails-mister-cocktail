class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all 
  end
  
  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    c_name = params[:name]
    @cocktail = Cocktail.new(name: c_name)
    @cocktail.save
  end

end
