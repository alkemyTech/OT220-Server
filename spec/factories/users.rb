# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    first_name { 'Miguel' }
    last_name { 'Liendo' }
    email { 'mliendo05@gmail.com' }
    password { 'MyString' }
    photo { 'MyString' }
    role

    trait :admin do
      role { create(:admin_role) }
    end

    trait :normal_user do
      role { create(:user_role) }
    end

    factory :admin_user, traits: [:admin]
    factory :normal_user, traits: [:normal_user]
  end
end
