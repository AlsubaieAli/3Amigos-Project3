class StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def show
    @store = Store.find_by(id: params[:id])
    @comments = Comment.new
  end

  def new
    @store = Store.new
    unless is_admin
      redirect_to contact_index_path
    end
  end

  def create
    store = Store.create(store_params)
    redirect_to stores_path
  end

  def edit
    @store = Store.find_by(id: params[:id])
    unless is_admin
      redirect_to contact_index_path
    end
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

  def is_admin
    if user_signed_in? && current_user.is_admin
      return true
    else
      return false
    end
  end

  def store_params
    params.require(:store).permit(:name, :address, :longitude, :latitude, :headline, :images, :price, :bio, :email, :number, :website, :facebook, :instagram, :snapchat, :twitter, :extra_link, :category, :city, :category_id, tag_ids: [])
  end
end
