class CreateWorkDays < ActiveRecord::Migration[6.0]
  def change
    create_table :work_days do |t|
      t.string :title 
      t.datetime :start 
      t.datetime :end
      t.belongs_to :employee
      t.timestamps
    end
  end
end
