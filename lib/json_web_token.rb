# frozen_string_literal: true

class JsonWebToken
  # Encode the payload:
  def self.encode(payload)
    JWT.encode(payload, ENV['SECRET_JWT_KEY'])
  end
  # Payload of the token:
  def self.decode(token)
    JWT.decode(token, ENV['SECRET_JWT_KEY'])
  end
end
