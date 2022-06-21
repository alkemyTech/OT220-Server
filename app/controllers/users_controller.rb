# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: %i[update destroy]
  before_action :authorize_request, except: %i[login register]
  include Authenticable

  def index
    @users = User.kept
  end

  def register
    @user = User.new(user_params)
    if @user.save
      Sendeable.send_email(@user.email, 'Bienvenido a Somos Más')
      render @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def login
    @user = User.find_by(email: params[:user][:email])
    if @user&.authenticate(params[:user][:password])
      token = Authenticable.encode(user_id: @user.id)
      time = Time.current + 24.hours.to_i
      render json: {
        token: token, exp: time.strftime('%m-%d-%Y %H:%M'),
        username: @user.first_name
      }, status: :ok
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors
    end
  end

  def destroy
    if @user&.discard
      render json: @user, status: :ok
    else
      render json: 'user not deleted', status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :photo, :role_id)
  end
end
