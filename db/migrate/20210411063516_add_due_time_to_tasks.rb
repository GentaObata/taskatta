class AddDueTimeToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :due_time, :datetime
  end
end
