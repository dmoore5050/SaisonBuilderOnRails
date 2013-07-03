class AddGravityAndEfficiencyColumnsToRecipe < ActiveRecord::Migration

  def change
    add_column :recipes, :og, :text
    add_column :recipes, :fg, :text
    add_column :recipes, :efficiency, :text
  end

end
