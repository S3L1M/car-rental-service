class CarsController < ApplicationController
  def index
    fixed_latitude = 21.507989 # Fixed latitude value
    fixed_longitude = 39.218917 # Fixed longitude value

    # Fetch all cars from the database
    @cars = Car.all

    # Filter the cars within 50 km from the fixed point
    @nearby_cars = @cars.select do |car|
      distance = calculate_distance(fixed_latitude, fixed_longitude, car.latitude, car.longitude)
      distance <= 50
    end
  end

  def calculate_distance(lat1, lon1, lat2, lon2)
    # Convert degrees to radians
    lat1_rad = to_radians(lat1)
    lon1_rad = to_radians(lon1)
    lat2_rad = to_radians(lat2)
    lon2_rad = to_radians(lon2)

    # Calculate the differences in latitude and longitude
    dlat = lat2_rad - lat1_rad
    dlon = lon2_rad - lon1_rad

    # Apply the Haversine formula to calculate the distance
    a = Math.sin(dlat / 2) ** 2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) * Math.sin(dlon / 2) ** 2
    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a))
    distance = 6371 * c # Earth's radius in kilometers

    distance
  end

  def to_radians(degrees)
    degrees * Math::PI / 180
  end
  
end
