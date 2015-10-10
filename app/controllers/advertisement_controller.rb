class AdvertisementController < ApplicationController
  def index
    @advertisement = Advertisement.all
  end

  def show
    @advertisement = Advertisement.find (params[:id])
  end

  def new
    @advertisement = Advertisement.new
  end

  def create
    @advertisement = Advertisement.new
    if @advertisement.save
      flash[:notice] = "advertisement was created."
      redirect_to @advertisement
    else
      flash[:error] = "There was an error creating the Ad. Please try again."
      render :new
    end
  end
end
