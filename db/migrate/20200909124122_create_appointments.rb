class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|

      t.belongs_to :order
      t.belongs_to :employee
      t.datetime :start
      t.integer :duration
      t.timestamps
    end
  end
end
