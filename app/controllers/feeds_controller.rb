class FeedsController < ApplicationController
  layout "feed"
  
  def index
    @categories = Category.active_categories
    @articles = Article.all
  end

  def show
  end
end
