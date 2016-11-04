class SearchesController < ApplicationController

  def show
    @railway_stations = RailwayStation.all
  end

  def search_train
    start_station_id = params[:start_station_id]
    end_station_id = params[:end_station_id]

    render :result
  end
end