class CreateWorkDays < ActiveRecord::Migration[6.0]
  def change
    create_table :work_days do |t|
      t.string :title 
      t.datetime :start_time 
      t.datetime :end_time
      t.belongs_to :employee
      t.timestamps
    end
  end
end
