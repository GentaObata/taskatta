class AddColumnTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :priority, :integer, default: 10, null: false
  end
end
