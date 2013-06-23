class IngredientsController < ApplicationController

  add_crumb 'Ingredients', '/ingredients'

  before_filter :init_ingredient, only: [:new, :index]
  before_filter :all_ingredients, only: [:new, :index]

  def new
    add_crumb 'Add Ingredient', '/'
  end

  def index
    @recipe = Recipe.new
    @i = 1
  end

  def create
    @ingredient = Ingredient.new params[:ingredient]
    @ingredient.update_attributes(user: current_user)
    flash[:notice] = "You have added an ingredient!" if Ingredient.last == @ingredient
    redirect_to ingredients_url
  end

  def destroy
    @ingredient = Ingredient.find params[:id]
    @ingredient.destroy
    flash[:notice] = 'Ingredient has been destroyed!'
    redirect_to ingredients_url
  end

  private

  def init_ingredient
    @ingredient = Ingredient.new
  end

  def all_ingredients
    @ingredients = Ingredient.all
  end

end