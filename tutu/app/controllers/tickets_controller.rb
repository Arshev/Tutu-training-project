class TicketsController < ApplicationController

  def create
    @ticket = Ticket.new(train: params[:train], start_station_id: params[:start_station_id], end_station_id: params[:end_station_id])

    render :show
  end

  def show
  end

end