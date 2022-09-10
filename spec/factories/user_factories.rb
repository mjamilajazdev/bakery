# frozen_string_literal: true

require 'faker'
FactoryBot.define do
  factory :user do
    full_name { Faker::Company.bs }
    email { Faker::Internet.email }
    password { '12345678' }
  end
end
