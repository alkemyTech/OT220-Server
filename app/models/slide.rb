# frozen_string_literal: true

class Slide < ApplicationRecord
  include Discard::Model
  belongs_to :organization

  validates :image_url, presence: true
end
