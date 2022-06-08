# frozen_string_literal: true

FactoryBot.define do
  factory :contact do
    name { 'MyString' }
    phone { 1 }
    email { 'MyString' }
    message { 'MyString' }
  end
end
