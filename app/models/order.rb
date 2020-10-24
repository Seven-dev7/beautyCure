class Order < ApplicationRecord

    belongs_to :user
    belongs_to :appointment
    has_many :order_products
    has_many :order_services
end
