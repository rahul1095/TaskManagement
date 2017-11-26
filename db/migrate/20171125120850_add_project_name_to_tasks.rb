class AddProjectNameToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :projectname, :string
  end
end
