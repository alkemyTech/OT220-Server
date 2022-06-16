# frozen_string_literal: true

class ActivitiesController < ApplicationController
  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      render @activity, status: :created
    else
      render json: @activity.errors, status: :unprocessable_entity
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :image, :content)
  end
end
