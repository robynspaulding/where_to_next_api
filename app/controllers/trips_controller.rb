class TripsController < ApplicationController

  def index 
    trips = Trip.all 
    render json: trips.as_json
  end

  def create
    trip = Trip.new(
      user_id: params[:user_id],
      title: params[:title],
      image_url: params[:image_url],
      start_time: params[:start_time],
      end_time: params[:end_time]
    )
    trip.save
    render json: trip.as_json
  end

  def show
    trip = Trip.find_by(id: params[:id])
    render json: trip.as_json
  end

  def update
    trip = Trip.find_by(id: params[:id])
    trip.user_id = params[:user_id] || trip.user_id
    trip.title = params[:title] || trip.title
    trip.image_url = params[:image_url] || trip.image_url
    trip.start_time = params[:start_time] || trip.start_time
    trip.end_time = params[:end_time] || trip.end_time
    trip.save
    render json: trip.as_json 
  end

end
