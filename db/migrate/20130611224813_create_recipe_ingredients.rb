class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      t.references :recipe
      t.references :ingredient
      t.float :quantity
      t.string :usage
      t.string :duration
      t.timestamps
    end
  end
end
