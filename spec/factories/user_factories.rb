require 'faker'
FactoryBot.define do
  factory :user do
    full_name { Faker::Company.bs }
    email {Faker::Internet.email }
    password  { '123456' }
  end
end