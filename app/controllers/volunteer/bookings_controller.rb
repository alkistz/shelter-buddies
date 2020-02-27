class Volunteer::BookingsController < ApplicationController
  def index
    @bookings = current_volunteer.bookings
  end
end
