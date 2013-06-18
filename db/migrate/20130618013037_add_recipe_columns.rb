class AddRecipeColumns < ActiveRecord::Migration

  def up
    add_column :recipes, :batch_size, :string
    add_column :recipes, :mash_length, :string
    add_column :recipes, :mash_temp, :string
  end

end
