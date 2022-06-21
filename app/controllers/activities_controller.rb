# frozen_string_literal: true

class ActivitiesController < ApplicationController
  before_action :authorize_request
  before_action :set_activity, only: [:update]

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      render @activity, status: :created
    else
      render json: @activity.errors, status: :unprocessable_entity
    end
  end

  def update
    if @activity.update(activity_params)
      render json: @activity, status: :ok
    else
      render json: { message: 'Unable to update Activity' }, status: :not_found
    end
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :image, :content)
  end
end
