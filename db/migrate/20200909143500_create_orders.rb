class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|

      t.integer :total_price
      t.belongs_to :user
      t.belongs_to :appointment
      t.timestamps
    end
  end
end
