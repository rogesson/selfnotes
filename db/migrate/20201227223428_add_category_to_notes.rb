class AddCategoryToNotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :notes, :category, foreign_key: true
  end
end
