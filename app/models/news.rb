# frozen_string_literal: true

class News < ApplicationRecord
  include Discard::Model
  after_initialize :set_type
  belongs_to :category
  validates :name, :content, :image, presence: true

  def set_type
    self.news_type ||= 'news' if new_record?
  end
end
