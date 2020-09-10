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
end