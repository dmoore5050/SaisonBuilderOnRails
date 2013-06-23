class RecipesController < ApplicationController

  add_crumb 'Recipes', '/recipes'

  before_filter :find_recipe, only: [:show, :edit, :update, :destroy]
  before_filter :init_recipe, only: [:new, :create]
  before_filter :collect_recipe_ingredients, only: [:show, :edit]
  before_filter :new_recipe_ingredient, only: [:new, :update, :edit]
  before_filter :all_ingredients, only: [:new, :update, :edit,]
  before_filter :all_recipe_ingredients, only: [:new, :update, :edit]
  before_filter :usage_list, only: [:new, :update, :edit]

  def new
    add_crumb 'Add Recipe', '/'
  end

  def index
    @recipes = Recipe.all
  end

  def show
    add_crumb @recipe.name.titleize, '/'
  end

  def edit
    add_crumb @recipe.name.titleize, '/'
  end

  def update
    @recipe.update_attributes(params[:recipe])
    redirect_to recipes_url
  end

  def create
    @recipe.update_attributes(user: current_user)
    flash[:notice] = "You have added a recipe!"
    redirect_to recipes_url
  end

  def destroy
    @recipe.destroy
    flash[:notice] = 'Recipe has been destroyed!'
    redirect_to recipes_url
  end

  private

  def find_recipe
    @recipe = Recipe.find params[:id]
  end

  def init_recipe
    @recipe = Recipe.new params[:recipe]
  end

  def collect_recipe_ingredients
    @recipe_ingredients = @recipe.recipe_ingredients.all
  end

  def new_recipe_ingredient
    @recipe_ingredient = RecipeIngredient.new
  end

  def all_ingredients
    @ingredients = Ingredient.all
  end

  def all_recipe_ingredients
    @all_recipe_ingredients = RecipeIngredient.all
  end

  def usage_list
    @usage_list = @all_recipe_ingredients.uniq { |i| i.usage }.select { |u| u.usage != nil }
  end

end