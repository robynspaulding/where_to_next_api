class PlacesController < ApplicationController

  def index 
    @places = Place.all 
    render json: @places.as_json
  end

  def create
    @place = Place.new(
      trip_id: params[:trip_id],
      address: params[:address],
      name: params[:name],
      description: params[:description],
      image_url: params[:image_url],
      start_time: params[:start_time],
      end_time: params[:end_time]
    )
    @place.save
    render json: @place.as_json
  end

  def show
    @place = Place.find_by(id: params[:id])
    render json: @place.as_json
  end

  def update
    @place = Place.find_by(id: params[:id])

    @place.address = params[:address] || @place.address
    @place.name = params[:name] || @place.name
    @place.description = params[:description] || @place.description
    @place.image_url = params[:image_url] || @place.image_url
    @place.start_time = params[:start_time] || @place.start_time
    @place.end_time = params[:end_time] || @place.end_time
    
    @place.save
    render json: @place.as_json 
  end

  def destroy
    @place = Place.find_by(id: params[:id])
    @place.destroy
    render json: {message: "Place successfully deleted"}
  end

end
