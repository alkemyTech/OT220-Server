# frozen_string_literal: true

module Authenticable
  extend ActiveSupport::Concern

  def self.encode(payload)
    JWT.encode(payload, ENV.fetch('SECRET_JWT_KEY'))
  end

  # Token payload:
  def self.decode(token)
    JWT.decode(token, ENV.fetch('SECRET_JWT_KEY'))
  end
end
