class Employee < ApplicationRecord

    has_one :work_day
    has_many :appointments
end
