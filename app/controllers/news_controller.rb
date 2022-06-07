# frozen_string_literal: true

class NewsController < ApplicationController
  before_action :set_news, only: [:destroy]
  def create
    @news = News.new(news_params)
    if @news.save
      render @news, status: :created
    else
      render json: @news.errors, status: :unprocessable_entity
    end
  end
  
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

  def news_params
    params.require(:news).permit(:name, :content, :image, :category_id)
  end
end
