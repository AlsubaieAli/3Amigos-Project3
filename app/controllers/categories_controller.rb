class CategoriesController < ApplicationController
  def index
    redirect_to home_path
  end

  def show
    @category = Category.find_by(id: params[:id])
    @stores = @category.stores
  end
end
