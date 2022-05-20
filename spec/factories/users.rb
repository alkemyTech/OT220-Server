FactoryBot.define do
  factory :user do
    firsName { "MyString" }
    lastName { "MyString" }
    email { "MyString" }
    password { "MyString" }
    photo { "MyString" }
    role { nil }
  end
end
