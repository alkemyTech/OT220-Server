# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    first_name { 'MyString' }
    last_name { 'MyString' }
    email { 'MyString' }
    password { 'MyString' }
    photo { 'MyString' }
    role { nil }
  end
end
