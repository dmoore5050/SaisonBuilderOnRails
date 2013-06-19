class RecipesController < ApplicationController

  add_crumb 'Recipes', '/recipes'

  def new
    add_crumb 'Add Recipe', '/'
    @recipe = Recipe.new(params[:recipe])
    @recipe_ingredient = RecipeIngredient.new
    @ingredients = Ingredient.all
  end

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find params[:id]
    add_crumb @recipe.name.capitalize, '/'
    @recipe_ingredients = @recipe.recipe_ingredients.all
  end

  def create
    @recipe = Recipe.new params[:recipe]
    @recipe.user = current_user
    @recipe.save
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