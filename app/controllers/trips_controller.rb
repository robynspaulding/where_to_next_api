class TripsController < ApplicationController
  before_action :authenticate_user

  def index 
    @trips = current_user.trips  
    render template: "trips/index"
  end

  def create
    @trip = Trip.new(
      user_id: current_user.id,
      title: params[:title],
      image_url: params[:image_url],
      start_time: params[:start_time],
      end_time: params[:end_time]
    )
    @trip.save
    render template: "trips/show"
  end

  def show
    @trip = Trip.find_by(id: params[:id])
    render template: "trips/show" 
  end

  def update
    @trip = Trip.find_by(id: params[:id])

    @trip.title = params[:title] || @trip.title
    @trip.image_url = params[:image_url] || @trip.image_url
    @trip.start_time = params[:start_time] || @trip.start_time
    @trip.end_time = params[:end_time] || @trip.end_time
    
    @trip.save
    render template: "trips/show" 
  end

  def destroy
    @trip = Trip.find_by(id: params[:id])
    @trip.destroy
    render json: {message: "Trip successfully deleted"}
  end

end
