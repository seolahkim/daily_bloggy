class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :categories_loader, :set_init_breadcrumbs, :set_request_variant

  def set_request_variant
    request.variant = request.from_smartphone? ? :smartphone : :pc
  end

  def categories_loader
    @categories = Category.all
  end

  def set_init_breadcrumbs
    @breadcrumbs = Breadcrumbs.new
    set_breadcrumbs if self.respond_to?(:set_breadcrumbs)
  end
end
