class TracksController < ApplicationController
  def new
    @track = Track.new
  end

  def index
    @tracks = Track.all
  end

  def create
    @track = Track.new(params[:track])
    @track.save

    redirect_to track_url(@track)
  end

  def show
    @track = Track.find(params[:id])
  end

  def destroy
    @track = Track.find(params[:id]).destroy

    redirect_to tracks_url
  end
end
