class FeedsController < ApplicationController
  layout "feed"
  before_action :categories_loader
  
  def index
  end

  def show
  end
end
