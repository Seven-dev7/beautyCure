class Cart < ApplicationRecord
    
    belongs_to :user
    has_many :cart_products
    has_many :cart_services
end
