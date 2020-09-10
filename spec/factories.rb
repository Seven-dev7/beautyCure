require 'ffaker'

FactoryBot.define do
    
    factory :user do
        email { FFaker::Internet.email }
        password  { "oussama" }
    end
end