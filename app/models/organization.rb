# frozen_string_literal: true

class Organization < ApplicationRecord
  include Discard::Model

  has_one_attached :image
  validates :name, :email, :welcome_text, presence: true
end
