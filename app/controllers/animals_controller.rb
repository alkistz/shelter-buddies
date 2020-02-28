class AnimalsController < ApplicationController
  before_action :animal_find, only: [:show, :destroy, :update, :edit]

  def search
  end

  def index
    if params[:search] == nil
      @animals = Animal.all

       @markers = @animals.map do |animal|
      {
        lat: animal.shelter.latitude,
        lng: animal.shelter.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { animal: animal }),
        image_url: helpers.asset_url('shelter-icon')
      }
        end
    else
      @animals = Animal.where(animal_type: params[:search][:query])
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.save
    redirect_to animal_path(@animal)
  end

  def edit
  end

  def update
    @animal = Animal.update(animal_params)
    redirect_to animal_path(@animal)
  end

  def destroy
    @animal.destroy
    redirect_to animals_path
  end

  private

  def animal_find
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:name, :animal_type, :race, :description, :age, :size, :shelter_id, :photo)
  end
end
