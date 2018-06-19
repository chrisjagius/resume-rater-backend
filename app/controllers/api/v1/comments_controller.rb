class Api::V1::CommentsController < ApplicationController
   # protect_from_forgery except: [:index, :create]
  def index
    if params.include?(:resume_id)
      @resume = Resume.find(params[:resume_id])
      @comments = @resume.feedback
      render json: @comments
    end
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
    params.require(:comment).permit(:content, :poster_id, :resume_id)
  end

  def error_message
    {status: "error", code: 400, message: "Bad Request Bro!"}
  end

end
