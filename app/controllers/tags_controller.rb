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
end
