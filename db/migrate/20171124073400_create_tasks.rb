class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :project_id
      t.string :description
      t.string :user_id
      t.string :image
      t.date :due_date
      # t.date :_date
      t.date :is_done

      t.timestamps
    end
  end
end
