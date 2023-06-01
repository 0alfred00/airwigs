class BookingsController < ApplicationController
  before_action :set_offer, only: [:new, :create]

  def index
    @bookings = current_user.bookings
    #checking
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(booking_params)
    @booking.offer = @offer
    @booking.user = current_user
    @booking.status = "pending"
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end

    # redirect_to bookings_path(@booking)
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, :offer_id)
  end

end
