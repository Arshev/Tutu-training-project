class TicketsController < ApplicationController

  def create
    @ticket = Ticket.new
    @start_station_id = params[:start_station_id]
    @end_station_id = params[:end_station_id]
    @train = params[:train]

    render :show
  end

  def show
  end

end