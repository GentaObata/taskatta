class TasksAddColmunStatus < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :status, :integer, default: 10
  end
end
