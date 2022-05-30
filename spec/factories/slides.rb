# frozen_string_literal: true

FactoryBot.define do
  factory :slide do
    image_url { 'MyString' }
    text { 'MyText' }
    order { 1 }
    organization { nil }
  end
end
