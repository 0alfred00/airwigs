class OffersController < ApplicationController

  
  def show
    @offer = Offer.find(params[:id])
  end

  def index
    @offers = Offer.all
  end
  
  def create
    @offers = Offer.create(offer_params)
    @offer.save
    redirect_to offers_path(@offers)
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :color, :length, :size, :style)
  end

end
