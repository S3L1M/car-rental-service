class DetailsController < ApplicationController

  def show
    @car = Car.find(params[:id])
  end

end