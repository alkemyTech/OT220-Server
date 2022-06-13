# frozen_string_literal: true

json.user do
  json.id @user.id
  json.email @user.email
  json.first_name @user.first_name
  json.last_name @user.last_name
  json.role do
    json.id @user.role.id
    json.name @user.role.name
  end
end
