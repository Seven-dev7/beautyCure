require 'ffaker'

FactoryBot.define do
    
    factory :user do
        email { FFaker::Internet.email }
        password  { "oussama" }
    end
    factory :employee do
        first_name { FFaker::Name.name }
        last_name  { FFaker::Name.last_name }
    end
end