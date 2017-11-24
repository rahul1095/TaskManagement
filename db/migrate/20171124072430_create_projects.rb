class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :customer_name
      t.integer :user_id
      t.string :project_name
      t.string :due
      t.date :_date

      t.timestamps
    end
  end
end
