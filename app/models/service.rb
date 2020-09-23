class Service < ApplicationRecord

    has_many :order_services
    has_many :cart_services, dependent: :nullify
end
