class OffersController < ApplicationController


  def show
    @offer = Offer.find(params[:id])
  end

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
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
