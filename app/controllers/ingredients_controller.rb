class IngredientsController < ApplicationController

  add_crumb 'Ingredients', '/'

  def new
    @ingredient = Ingredient.new
  end

  def index
    @ingredients = Ingredient.all
    @recipe = Recipe.new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new params[:ingredient]
    flash[:notice] = "You have added an ingredient!"
  end

end