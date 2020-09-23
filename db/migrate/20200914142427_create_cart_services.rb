class CreateCartServices < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_services do |t|

      t.belongs_to :cart
      t.belongs_to :service
      t.timestamps
    end
  end
end
