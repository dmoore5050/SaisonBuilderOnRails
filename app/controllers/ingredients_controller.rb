class IngredientsController < ApplicationController

  add_crumb 'Ingredients', '/'

  def new
    add_crumb 'Add Ingredient', '/'
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
    redirect_to ingredients_url
  end

end