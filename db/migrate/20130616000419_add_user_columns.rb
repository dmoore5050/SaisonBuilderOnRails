class AddUserColumns < ActiveRecord::Migration

  def up
    add_column :ingredients, :user, :references
    add_column :recipes, :user, :references
  end

end
