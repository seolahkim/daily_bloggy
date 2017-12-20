class FeedsController < ApplicationController
  def index
    @categories = Category.active_categories
    @articles = Article.all
  end

  def show
  end
end
