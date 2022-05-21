# frozen_string_literal: true

FactoryBot.define do
  factory :organization do
    name { 'MyString' }
    address { 'MyString' }
    phone { '' }
    email { 'MyString' }
    welcome_text { 'MyText' }
    about_us_text { 'MyText' }
  end
end
