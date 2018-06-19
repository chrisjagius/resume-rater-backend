class Api::V1::CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render json: @comments
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment
    else
      render json: error_message
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :poster_id)
  end

  def error_message
    {status: "error", code: 400, message: "Bad Request Bro!"}
  end

end
