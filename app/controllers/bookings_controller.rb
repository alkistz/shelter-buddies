class BookingsController < ApplicationController
  before_action :booking_find, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  # this is a test

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @animal = Animal.find(params[:animal_id])
    @booking.animal = @animal
    @booking.volunteer = current_volunteer
    @booking.save!
    redirect_to @booking
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :time_slot, :volunteer_id)

  end

  def booking_find
    @booking = Booking.find(params[:id])
  end
end
