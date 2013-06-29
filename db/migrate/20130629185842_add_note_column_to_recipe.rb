class AddNoteColumnToRecipe < ActiveRecord::Migration

  def up
    add_column :recipes, :notes, :text
  end

end
