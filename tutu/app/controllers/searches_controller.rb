class SearchesController < ApplicationController

  def show
    @railway_stations = RailwayStation.all
  end

  def search_train
    @search_result = Search.search_train(params[:start_station_id], params[:end_station_id])

    render :result
  end
end