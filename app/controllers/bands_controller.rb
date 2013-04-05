class BandsController < ApplicationController
  def index
    @bands = Band.all
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(params[:band])
    @band.save

    redirect_to band_path(@band)
  end

  def show
    @band = Band.find(params[:id])
  end

  def destroy
    @band = Band.find(params[:id]).destroy

    redirect_to bands_url
  end

end
