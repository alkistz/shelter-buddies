class Shelter::BookingsController < ApplicationController
  def index
    @bookings = Booking.joins(:animal)
                       .where(animals: { shelter: current_shelter } )
  end
end
