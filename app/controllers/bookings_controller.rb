class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @bookings = @bookings.where(current_user.id == user.id)
  end
end
