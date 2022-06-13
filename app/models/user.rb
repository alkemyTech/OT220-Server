# frozen_string_literal: true

class User < ApplicationRecord
  include Discard::Model

  belongs_to :role
  validates :first_name, :last_name, :email, :password, presence: true
  validates :email, uniqueness: true
  after_validation :set_hash_password

  def set_hash_password
    self.password = JsonWebToken.encode(password)
  end
end
