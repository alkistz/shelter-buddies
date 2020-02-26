class AnimalsController < ApplicationController
  before_action :animal_find, only: [:show, :delete, :update, :edit]

  def search
  end

  def index
    @animals = Animal.where(animal_type: params[:search][:query])
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
