# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'ruby220@noreply.com'
  layout 'mailer'
end
