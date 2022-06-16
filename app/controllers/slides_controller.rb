class SlidesController < ApplicationController
  def create
    @slide = Slide.new(slide_params)
    if @slide.save
      render @slide, status: :created
    else
      render json: @slide.errors, status: :unprocessable_entity
    end
  end

  def slide_params
    params.require(:slide).permit(:image_url, :text, :order, :organization_id)
  end
end
