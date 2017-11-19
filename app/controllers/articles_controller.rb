class ArticlesController < ApplicationController
  layout "application"

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find_by_id(params[:id])
  end
end
