# frozen_string_literal: true

json.category do
  json.extract! @category,
                :id,
                :name,
                :description,
                :created_at,
                :updated_at
end
