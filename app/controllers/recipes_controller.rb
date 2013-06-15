class RecipesController < ApplicationController

  add_crumb 'Recipes'

  def new
    @recipe = Recipe.new
  end

  def index
    @recipes = Recipe.all
  end

  def create
    @recipe = Recipe.new params[:recipe]
    flash[:notice] = "You have added a recipe!"
  end

end