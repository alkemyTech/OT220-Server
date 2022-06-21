# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  include Discard::Model

  belongs_to :role
  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true
end
