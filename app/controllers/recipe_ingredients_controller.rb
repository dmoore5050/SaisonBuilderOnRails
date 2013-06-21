class RecipeIngredientsController < ApplicationController

  def new
    @recipe_ingredient = Ingredient.new
  end

  def destroy
    @recipe_ingredient = RecipeIngredient.find params[:id]
    @recipe_ingredient.destroy
    flash[:notice] = 'Recipe ingredient has been destroyed!'
  end

end