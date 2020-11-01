class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.belongs_to :user
      t.belongs_to :employee
      t.belongs_to :cart
      t.datetime :start

      t.timestamps
    end
  end
end
