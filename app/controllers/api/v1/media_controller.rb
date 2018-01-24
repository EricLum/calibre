class Api::V1::MediaController < ApplicationController

  def index
    @media = Medium.all
    render json: @media
  end

  def show
    @medium = Medium.find(params[:id])
    render json: @medium
  end

  def create
    @medium = Medium.new(medium_params)
    if @medium.valid?
      @medium.save
      render json: @medium
    else
      render json: {errors: @medium.errors.full_messages}, status: 500
    end
  end

  def update
    @medium = Medium.find(params[:id])
    @medium.update(medium_params)
    if @medium.save
      render json: @medium
    else
      render json: {errors: @medium.errors.full_messages}, status: 422
    end
  end

  def destroy
    @medium = Medium.find(params[:id])
    @medium.destroy
  end

  private
  def medium_params
    params.require(:medium).permit(:type, :title, :artist, :likes, :filesource)
  end
end
