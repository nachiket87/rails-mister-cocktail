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
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    binding.pry

    redirect_to cocktail_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

end
