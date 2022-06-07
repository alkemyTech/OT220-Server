# frozen_string_literal: true

json.news do
  json.id @news.id
  json.name @news.name
  json.content @news.content
  json.category do
    json.id @news.category.id
    json.name @news.category.name
  end
  json.created_at @news.created_at
  json.updated_at @news.updated_at
end
