# frozen_string_literal: true

FactoryBot.define do
  factory :role do
    name { Faker::Name.name }
    description { Faker::Lorem.sentence }
  end
end
