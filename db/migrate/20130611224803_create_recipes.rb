class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :boil_length
      t.string :primary_fermentation_temp
      t.string :description
      t.timestamps
    end
  end
end
