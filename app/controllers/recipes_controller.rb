class RecipesController < ApplicationController

  add_crumb 'Recipes', '/recipes'

  def new
    add_crumb 'Add Recipe', '/'
    @recipe = Recipe.new
  end

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find params[:id]
    add_crumb @recipe.name.capitalize, '/'
    @recipe_ingredients = @recipe.recipe_ingredients.all
    @ingredient_print_order = %w(grain adjunct hop spice fruit botanical yeast)
  end

  def create
    @recipe = Recipe.new params[:recipe]
    @ingredient.user = current_user
    flash[:notice] = "You have added a recipe!"
    redirect_to recipes_url
  end

  def destroy
    @recipe = Recipe.find params[:id]
    @recipe.destroy
    flash[:notice] = 'Recipe has been destroyed!'
    redirect_to recipes_url
  end

end