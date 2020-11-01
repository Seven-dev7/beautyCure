require 'ffaker'

FactoryBot.define do

    factory :cart_service do
        association :cart
        association :service
    end

    factory :cart_product do
        association :cart
        association :product
    end


    factory :order_product do
        association :order
        association :product
    end

    factory :order_service do
        association :order
        association :service
    end

    factory :service do
        title { "MyString" }
        description { "MyText" }
        price { 1 }
    end

    
    factory :user do
        email { FFaker::Internet.email }
        password  { "oussama" }
    end
    factory :employee do
        first_name { FFaker::Name.name }
        last_name  { FFaker::Name.last_name }
    end
    factory :product do
        title { FFaker::Book.title }
        description  { FFaker::Lorem.sentence }
        price  { (20..352).to_a.sample }
    end
    factory :work_day do
        title { FFaker::Book.title }
        start_time {Time.now}
        end_time {Time.now + 3600}
        association :employee
    end
    factory :order do
        total_price { (20..352).to_a.sample }
        association :user
    end
    
    factory :cart do
        association :user
    end
    
    factory :cart_item do
        association :cart
        association :product
    end
    factory :appointment do
        association :user
        association :employee
        association :cart
        start {Time.now}
        duration { (1..60).to_a.sample}
    end
end
