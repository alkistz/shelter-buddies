class SheltersController < ApplicationController
  def index
        @shelters = Shelter.all

        @markers = @shelters.map do |shelter|
      {
        lat: shelter.latitude,
        lng: shelter.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { shelter: shelter }),
        image_url: helpers.asset_url('shelter-icon.png')
      }
      end
      if params[:search] == nil
        @animals = Animal.all
      else
        @animals = Animal.where(animal_type: params[:search][:query])
      end
  end

  def show
    @shelter = Shelter.find(params[:format])
  end
end
