# frozen_string_literal: true

class ApplicationController < ActionController::API
  include Sendeable
  include ExceptionHandler
end
