class AddIndex < ActiveRecord::Migration[6.1]
  def change
    add_index :task_statuses, :name
  end
end
