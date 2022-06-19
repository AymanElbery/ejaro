module CarsHelper

  def self.get_cars_within_5_km(cars)
    fixed_lat = 24.784520687984507
    fixed_long = 46.67296929713212
    return_array = []
    cars.each do |car|
      d = Geocoder::Calculations.distance_between([fixed_lat,fixed_long], [car['lat'],car['long']], units: :km)
      if(d < 5)
        return_array.push(car)
      end
    end
    return return_array
  end

end
