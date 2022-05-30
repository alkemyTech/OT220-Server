# frozen_string_literal: true

json.array! @categories do |category|
  json.name category.name
end
