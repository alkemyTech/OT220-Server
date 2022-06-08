# frozen_string_literal: true

class Contact < ApplicationRecord
  validates :name, presence: true
end
