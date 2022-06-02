# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :find_user, only: [:update]

  def index
    @users = User.kept
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :photo)
  end
end
