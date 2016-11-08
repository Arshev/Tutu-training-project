class TicketsController < ApplicationController

  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  def create
    @ticket = Ticket.new(train_id: params[:train], departure_station_id: params[:start_station_id], arrival_station_id: params[:end_station_id])

    if @ticket.save
      render :show
    else
      render :new
    end
  end

  def show
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:serial_number, :departure_station_id, :arrival_station_id, :user_id, :train_id)
  end

end