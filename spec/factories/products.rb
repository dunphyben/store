# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name { Faker::Commerce.product_name }
    description { Faker::Lorem.words.join(' ') }
    price { Faker::Commerce.price }
    admin_id "1"
    employee_id "1"
  end
end
