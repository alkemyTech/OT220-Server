# frozen_string_literal: true

json.array! @users do |user|
  json.id user.id
  json.first_name user.first_name
  json.last_name user.last_name
  json.email user.email
  json.role do
    json.id user.role.id
    json.name user.role.name
  end
end
