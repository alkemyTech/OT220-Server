# frozen_string_literal: true

class Activity < ApplicationRecord
  include Discard::Model
  validates :name, :content, presence: true
end
