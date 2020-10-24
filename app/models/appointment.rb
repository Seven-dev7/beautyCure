class Appointment < ApplicationRecord

    belongs_to :user
    belongs_to :employee
    has_one :order
end
