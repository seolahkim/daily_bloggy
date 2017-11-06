class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :categories_loader, :set_init_breadcrumbs

  def categories_loader
    @categories = Category.all
  end

  def set_init_breadcrumbs
    @breadcrumbs = Breadcrumbs.new
    set_breadcrumbs if self.respond_to?(:set_breadcrumbs)
  end
end
