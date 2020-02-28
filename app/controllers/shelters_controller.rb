class SheltersController < ApplicationController
  def index
      if params[:search] == nil || params[:search][:animal_type_input] == ""
        @animals = Animal.all
      else
        @animals = Animal.where(animal_type: params[:search][:animal_type_input])
        animal_type_input = params[:search][:animal_type_input]
      end

        if params[:search] == nil || params[:search][:location_input] == ""
          @shelters = Shelter.all
        else
          @shelters = Shelter.near(params[:search][:location_input], 1000, order: :distance)
          animal_location_input = params[:search][:location_input]
        end

      @markers = @shelters.map do |shelter|
      {
        lat: shelter.latitude,
        lng: shelter.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { shelter: shelter }),
        image_url: helpers.asset_url('shelter-icon.png')
      }
      end

      if params[:search] == nil
        @user_input = "All the animals in the word"
      elsif params[:search][:location_input] == ""
        @user_input = "All the #{animal_type_input} in the word"
      elsif params[:search][:animal_type_input] == ""
        @user_input = "All the animals near #{animal_location_input}"
      else
        @user_input = "All the #{animal_type_input} near #{animal_location_input}"
      end
    end
    def show
      @shelter = Shelter.find(params[:format])

    end
end
