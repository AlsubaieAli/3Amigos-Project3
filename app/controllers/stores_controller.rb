class StoresController < ApplicationController
  def index
    @stores = Store.all.where(category: params[:category])
  end

  def show
    @store = Store.find_by(id: params[:id])
  end

  def new
    @store = Store.new
  end

  def create
    store = Store.create(store_params)
    redirect_to stores_path
  end

  def edit
    @store = Store.find_by(id: params[:id])
  end

  def update
    store = Store.find_by(id: params[:id])
    store.update(store_params)
    redirect_to store_path(store)
  end

  def destroy
    store = Store.find_by(id: params[:id])
    store.destroy
    redirect_to stores_path
  end

  private

  def store_params
    params.require(:store).permit(:name, :address, :longitude, :latitude, :headline, :images, :price, :bio, :email, :number, :website, :facebook, :instagram, :snapchat, :twitter, :extra_link, :category, :sub_category)
  end
end
