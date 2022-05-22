# frozen_string_literal: true

class News < ApplicationRecord
  include Discard::Model

  validates :name, :content, :image, presence: true
end
