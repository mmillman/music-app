class SinglesController < ApplicationController
  def new
    @single = Single.new
  end

  def create
    @single = Single.new(params[:single])
    @single.save

    redirect_to single_url(@single)
  end

  def index
    @singles = Single.all
  end

  def show
    @single = Single.find(params[:id])
  end

  def destroy
    @single = Single.find(params[:id]).destroy

    redirect_to singles_url
  end
end
