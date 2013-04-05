class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def index
    @artists = Artist.all
  end

  def create
    @artist = Artist.new(params[:artist])
    @artist.save

    redirect_to artist_url(@artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def destroy
    @artist = Artist.find(params[:id]).destroy

    redirect_to artists_url
  end
end
