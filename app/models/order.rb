class Order < ApplicationRecord

    belongs_to :user
    has_many :order_products
    has_many :order_services
end
