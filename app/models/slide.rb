# frozen_string_literal: true

class Slide < ApplicationRecord
  belongs_to :organization

  validates :image_url, presence: true
end
