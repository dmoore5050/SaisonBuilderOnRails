class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :description
      t.string :type_code
      t.integer :yeast_code_wyeast
      t.integer :yeast_code_wl
      t.timestamps
    end
  end
end
