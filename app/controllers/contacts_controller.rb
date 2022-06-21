# frozen_string_literal: true

class ContactsController < ApplicationController
  before_action :authorize_request
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render json: @contact, status: :created
    else
      render json: { message: 'Unable to create Contact' }, status: :bad_request
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :phone, :email, :message)
  end
end
