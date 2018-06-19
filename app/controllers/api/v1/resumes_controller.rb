class Api::V1::ResumesController < ApplicationController

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
      throw alert
    end
  end


  private

  def resume_params
    params.require(:resume).permit(:image_url, :industry, :user_id)
  end

end
