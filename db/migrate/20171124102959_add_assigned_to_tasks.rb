class AddAssignedToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :assigned_to, :string
  end
end
