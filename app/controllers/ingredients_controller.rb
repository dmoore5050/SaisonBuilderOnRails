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
    @ingredient.user_id = current_user.id
    @ingredient.save
    flash[:notice] = "You have added an ingredient!" if Ingredient.last == @ingredient
    redirect_to ingredients_url
  end

  def destroy
    @ingredient = Ingredient.find params[:id]
    @ingredient.destroy
    flash[:notice] = 'Ingredient has been destroyed!'
    redirect_to ingredients_url
  end

end