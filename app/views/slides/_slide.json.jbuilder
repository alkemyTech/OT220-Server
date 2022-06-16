# frozen_string_literal: true

json.slide do
    json.extract! @slide,
                  :image_url, 
                  :text, 
                  :order, 
                  :organization_id
  end
  