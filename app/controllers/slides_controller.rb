# frozen_string_literal: true

class SlidesController < ApplicationController
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

  private

  def set_slide
    @slide = Slide.find(params[:id])
  end

  def slide_params
    params.require(:slide).permit(:image_url, :text, :order, :organization_id)
  end
end
