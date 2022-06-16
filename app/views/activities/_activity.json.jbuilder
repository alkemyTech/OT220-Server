# frozen_string_literal: true

json.activity do
  json.id activity.id
  json.name activity.name
  json.image activity.image
  json.content activity.content
  json.created_at activity.created_at
  json.updated_at activity.updated_at
end
