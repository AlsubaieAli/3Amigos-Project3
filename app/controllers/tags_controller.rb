class TagsController < ApplicationController
  def index
    @alltags = Tag.all
    @tags = Tag.all.where(category_id: params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @tags }
    end
  end

  def show
    @tag = Tag.find_by(id: params[:id])
    @stores = @tag.stores
  end

  def new
    @tag = Tag.new
    unless is_admin
      redirect_to contact_index_path
    end
  end

  def create
    tag = Tag.create(tag_params)
    redirect_to tags_path
  end

  def edit
    @tag = Tag.find_by(id: params[:id])
    unless is_admin
      redirect_to contact_index_path
    end
  end

  def update
    tag = Tag.find_by(id: params[:id])
    tag.update(tag_params)
    redirect_to tags_path
  end

  def destroy
    tag = Tag.find_by(id: params[:id])
    tag.destroy
    redirect_to tags_path
  end

  private

  def is_admin
    if user_signed_in? && current_user.is_admin
      return true
    else
      return false
    end
  end

  def tag_params
    params.require(:tag).permit(:name, :category_id)
  end
end
