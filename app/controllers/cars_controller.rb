class CarsController < ApplicationController
  skip_before_action :authenticate_user! , only: [:index, :show,]
 
  def index
    @cars = Car.all
  end
  
  
  def addcar
    @car = Car.new
    @car.make = params["car"]["make"]
    @car.condition = params["car"]["condition"]
    @car.model = params["car"]["model"]
    @car.engine_size = params["car"]["engine_size"]
    @car.doors = params["car"]["doors"]
    @car.fuel = params["car"]["fuel"]
    @car.car_type = params["car"]["car_type"]
    @car.price = params["car"]["price"]
    @car.mileage = params["car"]["mileage"]
    @car.power = params["car"]["power"]
    @car.number_of_seats = params["car"]["number_of_seats"]
    @car.gearbox = params["car"]["gearbox"]
    @car.image = params["car"]["image"]
    @car.save
    redirect_to root_path
  end
  
  def about

  end
  def add 

  end

  def edit 

  end
   
  def show 
    @car = Car.find(params[:id])
  end
  
end
