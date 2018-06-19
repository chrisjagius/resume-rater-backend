class Api::V1::ResumesController < ApplicationController
  # protect_from_forgery except: [:index, :show, :create, :destroy]
  def index
    @resumes = Resume.all

    render json: @resumes
  end

  def show
    @resume = Resume.find(params[:id])

    render json: @resume
  end

  def create
    @resume = Resume.new(resume_params)
    if @resume.save
      render json: @resume
    else
      render json: error_message
    end
  end

  def destroy
    @resume = Resume.find(params[:id])
    @user = User.find(@resume.user_id)
    @resume.destroy
    render json: @user
  end

  private

  def resume_params
    params.require(:resume).permit(:title, :image_url, :industry, :user_id)
  end

  def error_message
    {status: "error", code: 400, message: "Bad Request Bro!"}
  end

end
