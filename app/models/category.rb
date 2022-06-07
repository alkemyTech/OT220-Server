# frozen_string_literal: true

class Category < ApplicationRecord
  include Discard::Model
  has_one_attached :image
  has_many :news
  validates :name, presence: true

  after_discard do
    news.discard_all
  end
end
