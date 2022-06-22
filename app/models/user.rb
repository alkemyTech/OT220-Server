# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  include Discard::Model

  belongs_to :role
  
  validates :first_name, :last_name, :email, :password_digest, presence: true
  validates :email, uniqueness: true, format: { with: /@/ }
  validates :password, length: { minimum: 8 }
end
