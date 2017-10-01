class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def categories_loader
    @categories = Category.all
  end
end
