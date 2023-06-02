class OffersController < ApplicationController
  def index
    if params[:query].present?
      @offers = Offer.search_by_title_and_description(params[:query])
    else
      @offers = Offer.all
    end
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :color, :length, :size, :style, :photo)
  end
end
