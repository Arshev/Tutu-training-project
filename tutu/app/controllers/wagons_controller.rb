class WagonsController < ApplicationController
  before_action :set_route, only: [:show, :edit, :update, :destroy]
  
  def index
    @routes = Wagon.all
  end

  def show
  end

  def new
    @route = Wagon.new
  end

  def create
    @route = Wagon.new(route_params)

    if @wagon.save
      redirect_to @wagon
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @wagon.update(wagon_params)
      redirect_to @wagon
    else
      render :edit
    end
  end

  def destroy
    @wagon.destroy
    redirect_to wagons_path
  end

  private

  def set_wagon
    @wagon = Wagon.find(params[:id])
  end

  def wagon_params
    params.require(:wagon).permit(:type_wagon, :quantity_top_place, :quantity_down_place, :train_id)
  end
end
