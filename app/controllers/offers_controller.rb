class OffersController < ApplicationController

  def show
    @offer = Offer.find(params[:id])

  def index
    @offers = Offer.all
  end
end
