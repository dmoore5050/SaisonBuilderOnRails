class AddUserColumns < ActiveRecord::Migration

  def up
    add_column :ingredients, :user_id, :integer
    add_column :recipes, :user_id, :integer
  end

end
