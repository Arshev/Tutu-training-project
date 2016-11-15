class Admin::TicketsController < Admin::BaseController

  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  def show
  end

  def edit
  end

  def index
    @ticket = Ticket.all
  end

  def update
    if @ticket.update(ticket_params)
      redirect_to @ticket
    else
      render :edit
    end
  end

  def destroy
    @ticket.destroy
    redirect_to admin_tickets_path
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:serial_number, :start_station_id, :end_station_id, :user_id, :train_id)
  end

end