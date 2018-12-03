class CategoriesController < ApplicationController
  def index
  end

  def show
    cat = Category.find_by(id: params[:id])
    @stores = cat.stores
  end
end
