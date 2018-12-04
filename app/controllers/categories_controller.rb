class CategoriesController < ApplicationController
  def index
    redirect_to home_path
  end

  def show
    cat = Category.find_by(id: params[:id])
    @stores = cat.stores
  end
end
