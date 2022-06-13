# frozen_string_literal: true

class AuthController < ApplicationController
  include Authenticable

  def register
    @user = User.new(auth_params)
    if @user.save
      Sendeable.send_email(@user.email, 'Bienvenido a Somos Más')
      render @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
  end

  def destroy
    user = User.find_by(id: params[:id])
    if user&.discard
      render json: user, status: :ok
    else
      render json: 'user not deleted', status: :unprocessable_entity
    end
  end

  private

  def auth_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :role_id)
  end
end
