# frozen_string_literal: true

class AuthController < ApplicationController
  include Authenticable

  def register
    @user = User.new(auth_params)
    if @user.save
      render @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  def auth_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :role_id)
  end
end
