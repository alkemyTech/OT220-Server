# frozen_string_literal: true

json.organization do
  json.extract! @organization,
                :name,
                :phone,
                :address
  json.image_url rails_blob_url(@organization.image) if @organization.image.attached?
end
