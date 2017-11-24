class ChangeDateFormatInMyTable < ActiveRecord::Migration[5.1]
  def change

  	 def up
    change_column :tasks, :my_column, :datetime
  end

  def down
    change_column :tasks, :my_column, :date
  end
  end
end
