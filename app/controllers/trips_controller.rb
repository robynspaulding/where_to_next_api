class TripsController < ApplicationController

  def index 
    trips = Trip.all 
    render json: trips.as_json
  end

end
