# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  belongs_to :role
  validates :first_name, :last_name, :email, :password_digest, presence: true
  validates :email, uniqueness: true, format: { with: /@/ }
end
