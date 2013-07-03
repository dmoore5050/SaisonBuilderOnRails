class RecipeIngredientsController < ApplicationController

  def destroy
    @recipe_ingredient = RecipeIngredient.find params[:id]
    @recipe = Recipe.where(id: @recipe_ingredient.recipe_id).first
    @recipe_ingredient.destroy
    flash[:notice] = 'Recipe ingredient destroyed!'
    redirect_to edit_recipe_path(@recipe)
  end

end