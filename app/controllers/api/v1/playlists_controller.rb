class Api::V1::PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.all
    render json: @playlists
  end

  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.valid?
      @playlist.save
      render json: @playlist
    else
      render json: {errors: @playlist.errors.full_messages}, status: 500
    end
  end

  def update
    @playlist = Playlist.find(params[:id])
    @playlist.update(playlist_params)
    if @playlist.save
      render json: @playlist
    else
      render json: {errors: @playlist.errors.full_messages}, status: 422
    end
  end

  def destroy
    @playlist = Playlist.find(params[:id])
    @playlist.destroy
  end

  private
  def playlist_params
    params.require(:playlist).permit(:kind, :title, :artist, :likes, :filesource)
  end

end
