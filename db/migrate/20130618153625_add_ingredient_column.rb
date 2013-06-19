class AddIngredientColumn < ActiveRecord::Migration

  def up
    add_column :ingredients, :category, :string
  end

end
