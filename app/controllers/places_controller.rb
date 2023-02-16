class PlacesController < ApplicationController

  before_action :place, only: [:show, :update, :destroy]

  def index
    trip = Trip.find_by(id: params[:trip_id])
    
    if trip
      render json: trip.places
    else
      render json: { error: "trip not found" }
    end
  end

  def create
    place = Place.new(
      trip_id: params[:trip_id],
      address: params[:address],
      name: params[:name],
      description: params[:description],
      image_url: params[:image_url],
      start_time: params[:start_time],
      end_time: params[:end_time]
    )
    place.save
    render json: place.as_json
  end

  def show
    render json: @place.as_json
  end

  def update
    @place.update(
      address: params[:address] || place.address,
      name: params[:name] || place.name,
      description: params[:description] || place.description,
      image_url: params[:image_url] || place.image_url,
      start_time: params[:start_time] || place.start_time,
      end_time: params[:end_time] || place.end_time
    )
    
    render json: @place.as_json 
  end

  def destroy
    @place.destroy
    render json: {message: "Place successfully deleted"}
  end

  private
    def place
      @place ||= Place.find_by!(id: params.require(:id))
    end
end
