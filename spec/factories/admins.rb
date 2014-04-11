# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin, :class => 'Admins' do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password_digest "password"
  end
end
