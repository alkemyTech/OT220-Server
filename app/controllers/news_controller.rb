# frozen_string_literal: true

class NewsController < ApplicationController
  before_action :set_news, only: [:destroy]
  def destroy
    if @news.discard
      render json: { message: 'News deleted' }, status: :ok
    else
      render json: { message: 'News not deleted' }, status: :unprocessable_entity
    end
  end

  private

  def set_news
    @news = News.find_by(id: params[:id])
    render json: { error: 'News not found' }, status: :not_found if @news.nil?
  end
end
