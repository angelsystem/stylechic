class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @shot = Shot.find(params[:shot_id])
    @comment = Comment.create(params[:comment].permit(:content))
    @comment.user = current_user
    @comment.shot = @shot
    if @comment.save
      redirect_to @shot
    else
      render 'new'
    end
  end
end
