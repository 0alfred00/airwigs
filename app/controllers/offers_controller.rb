class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.create(offer_params)
    @offer.save
    redirect_to root_path
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :color, :length, :size, :style)
  end
end
