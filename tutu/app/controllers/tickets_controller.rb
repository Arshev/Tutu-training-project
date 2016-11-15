class TicketsController < ApplicationController

  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token, only: [:create]
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  
  def create
    @ticket = current_user.tickets.new( train_id: params[:train], start_station_id: params[:start_station_id], end_station_id: params[:end_station_id], user_name: params[:user_name], passport: params[:passport])

    if @ticket.save
      render :show
    else
      render :new
    end
  end

  def show
  end

  def index
    @ticket = current_user.tickets.all
  end

  def destroy
    @ticket.destroy
    redirect_to tickets_path
  end

  private

  def set_ticket
    @ticket = current_user.tickets.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:serial_number, :start_station_id, :end_station_id, :user_id, :train_id)
  end

end