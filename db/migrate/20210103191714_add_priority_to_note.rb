class AddPriorityToNote < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :priority, :integer
  end
end
