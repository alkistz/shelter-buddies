class SheltersController < ApplicationController
  def index
        @shelters = Shelter.all

        @markers = @shelters.map do |shelter|
      {
        lat: shelter.latitude,
        lng: shelter.longitude
      }
      end
  end

  def show
    @shelter = Shelter.find(params[:format])
  end
end
