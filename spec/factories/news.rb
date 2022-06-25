# frozen_string_literal: true

FactoryBot.define do
  factory :news do
    name { 'MyString' }
    content { 'MyText' }
    image { 'MyString' }
    category { create(:category) }

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

    factory :good_news, traits: [:good]
    factory :bad_news, traits: [:bad]
  end
end
