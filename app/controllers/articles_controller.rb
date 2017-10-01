class ArticlesController < ApplicationController
  layout "application"

  before_action :categories_loader

  def index
    @articles = Article.all
  end
end
