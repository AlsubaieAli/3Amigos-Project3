class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    comment = current_user.create(comment_params)
    redirect_to request.referrer
  end

  def edit
  end

  def update
    comment = current_user.create(comment_params)
    redirect_to request.referrer
  end

  def destroy
    comment = current_user.find_by(id: params[:id])
    comment.destroy
    redirect_to request.referrer
  end

  private

  def comment_params
    params.require(:comment).permit(:store_id, :content, :rate)
  end
end
