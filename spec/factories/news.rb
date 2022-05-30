# frozen_string_literal: true

FactoryBot.define do
  factory :news do
    name { 'MyString' }
    content { 'MyText' }
    image { 'MyString' }
  end
end
