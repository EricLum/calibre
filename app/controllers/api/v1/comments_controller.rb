class Api::V1::CommentsController < ApplicationController

  def index
    @comments = Comment.all
    render json: @comments
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.valid?
      @comment.save
      render json: @comment
    else
      render json: {errors: @comment.errors.full_messages}, status: 500
    end
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    if @comment.save
      render json: @comment
    else
      render json: {errors: @comment.errors.full_messages}, status: 422
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :content_id, :medium_id)
  end

end
