# frozen_string_literal: true

FactoryBot.define do
  factory :activity do
    name { 'MyString' }
    content { 'MyText' }
    image { 'MyString' }

    trait :good do
      name { Faker::Lorem.sentence }
      content { Faker::Lorem.paragraph }
      image { Faker::Lorem.sentence }
    end

    trait :bad do
      name { nil }
      content { nil }
      image { nil }
    end

    factory :good_activities, traits: [:good]
    factory :bad_activities, traits: [:bad]
  end
end
