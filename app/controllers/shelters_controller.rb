class SheltersController < ApplicationController
  def index
      if params[:search] == nil || params[:search][:animal_type_input] == ""
        @animals = Animal.all
      else
        @animals = Animal.where(animal_type: params[:search][:animal_type_input])
        animal_type_input = params[:search][:animal_type_input]
      end

        if params[:search] == nil || params[:search][:location_input] == ""
          sorted_shelters = Shelter.all
        else
          sorted_shelters = Shelter.near(params[:search][:location_input], 1000, order: :distance)
          animal_location_input = params[:search][:location_input]
        end

        @shelters = []
        sorted_animals = []
        sorted_shelters.select do |shelter|
          shelter.animals.select do |animal|
            if @animals.include? animal
              sorted_animals << animal
            end
          end
          shelter.animals = sorted_animals
            unless shelter.animals.empty?
              @shelters << shelter
            end
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
        @user_input = "All the #{animal_type_inp
