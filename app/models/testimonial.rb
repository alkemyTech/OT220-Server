# frozen_string_literal: true

class Testimonial < ApplicationRecord
  include Discard::Model
  has_one_attached :image
  validates :name, presence: true
end
