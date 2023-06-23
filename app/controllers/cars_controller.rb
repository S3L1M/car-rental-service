class CarsController < ApplicationController
  def index
    # Fetch all cars within 50 km from the fixed point
    @cars = Car.near([21.507989, 39.218917], 50)
  end
  
end
