require 'faraday'
require 'json'


class CarsController < ApplicationController
  def list
    url = "https://62ae2e9d645d00a28a05ad90.mockapi.io/api/v1/cars"
    data = Faraday.get(url).body
    @cars = ActiveSupport::JSON.decode(data)
  end

  def nearest
    url = "https://62ae2e9d645d00a28a05ad90.mockapi.io/api/v1/cars"
    data = Faraday.get(url).body
    cars_data = ActiveSupport::JSON.decode(data)
    @cars = CarsHelper.get_cars_within_5_km(cars_data)

    render "list"
  end

  def view
    id = params[:id]
    url = "https://62ae2e9d645d00a28a05ad90.mockapi.io/api/v1/cars/" + id
    data = Faraday.get(url).body
    @car = ActiveSupport::JSON.decode(data)
  end

  def book
    id = params[:id]
    url = "https://62ae2e9d645d00a28a05ad90.mockapi.io/api/v1/cars/" + id
    data = Faraday.get(url).body
    @car = ActiveSupport::JSON.decode(data)
  end

end
