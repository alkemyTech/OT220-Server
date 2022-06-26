# frozen_string_literal: true

FactoryBot.define do
  factory :role do
    name { 'default' }
    description { 'default desc.' }

    trait :admin do
      name { 'admin' }
      description { 'Fugiat do consectetur eiusmod adipisicing esse commodo.' }
    end

    trait :user do
      name { 'user' }
      description { 'Fugiat do consectetur eiusmod adipisicing esse commodo.' }
    end
    
    factory :admin_role, traits: [:admin]
    factory :user_role, traits: [:user]
  end
end
