# frozen_string_literal: true

class UserNotifierMailer < ApplicationMailer
  default { :from => 'henriquezarmando95@gmail.com' }

  def send_email(params)
    @email = params[:to]
    @subject = params[:subject]
    mail(to: @email , subject: @subject)
  end
end
