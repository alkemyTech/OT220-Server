# frozen_string_literal: true

class CategoriesController < ApplicationController
  before_action :set_category, only: [:destroy]

  def index
    @categories = Category.kept
  end

  def destroy
    if @category.discard
      render json: { message: 'Category succesfully deleted' }, status: :ok
    else
      render json: { message: 'Unable to delete Category' }, status: :bad_request
    end
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end
end
