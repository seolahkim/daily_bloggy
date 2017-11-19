class FeedsController < ApplicationController
  layout "feed"
  
  def index
    @articles = Article.all
  end

  def show
  end
end
