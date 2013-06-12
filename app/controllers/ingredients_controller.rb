class IngredientsController < ApplicationController

  def new
    @ingredient = Ingredient.new
  end

  def index
    @ingredients = Ingredient.all
  end

  def create
    @ingredient = Ingredient.new params[:ingredient]
    flash[:notice] = "You have added an ingredient!"
  end

end
