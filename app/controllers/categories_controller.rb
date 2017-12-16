class CategoriesController < ApplicationController
  # before_action :set_category, only: [:show, :edit, :update, :destroy]

  layout "category"

  def index
    @categories = Category.all
    @breadcrumbs << {name: "Category"}
  end

  def show
    @category = Category.find(params[:id])
    @breadcrumbs.items << {name: "TOP", url_options: "/"}
    @breadcrumbs.items << @category.parent
  end

  def set_breadcrumbs
  end

  private

  def category
  end
end
