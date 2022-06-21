# frozen_string_literal: true

class SlidesController < ApplicationController
  before_action :authorize_request
  before_action :set_slide, only: %i[show]
  def create
    @slide = Slide.new(slide_params)
    if @slide.save
      render @slide, status: :created
    else
      render json: @slide.errors, status: :unprocessable_entity
    end
  end

  def show
    render @slide
  end

  def index
    render json: Slide.all
  end

  def update
    if @slide.update(slide_params)
      render json: @slide, status: :ok
    else
      render json: { message: 'Unable to update slide' }, status: :not_found
    end
  end

  private

  def set_slide
    @slide = Slide.find(params[:id])
  end

  def slide_params
    params.require(:slide).permit(:image_url, :text, :order, :organization_id)
  end
end
