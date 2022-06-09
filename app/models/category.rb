# frozen_string_literal: true

class Category < ApplicationRecord
  include Discard::Model
  has_many :news, dependent: :destroy
  has_one_attached :image
  validates :name, presence: true

  after_discard do
    news.discard_all
  end
end
