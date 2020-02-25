class SheltersController < ApplicationController
  def index
        @shelters = Shelter.all
  end

  def show
    @shelter = Shelter.find(params[:format])
  end
end
