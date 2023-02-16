class TripsController < ApplicationController
  before_action :authenticate_user
  before_action :trip, only: [:show, :update, :destroy]
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
    render template: "trips/show" 
  end

  def update

    @trip.update(
      title: params[:title] || trip.title,
      image_url: params[:image_url] || trip.image_url,
      start_time: params[:start_time] || trip.start_time,
      end_time: params[:end_time] || trip.end_time
    ) 
    
    render template: "trips/show" 
  end

  def destroy
    @trip.destroy
    render json: {message: "Trip successfully deleted"}
  end

  private
    def trip
      @trip ||= Trip.find_by!(id: params.require(:id))
    end

end
