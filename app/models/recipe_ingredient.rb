class RecipeIngredient < ActiveRecord::Base
  attr_accessible :usage, :quantity, :duration, :ingredient_id, :recipe_id

  belongs_to :recipe
  belongs_to :ingredient
end
