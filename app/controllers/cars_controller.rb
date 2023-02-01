class CarsController < ApplicationController
  skip_before_action :authenticate_user! , only: [:index, :show,]
  skip_before_action :verify_authenticity_token
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

  def update_user
    @user = User.find(current_user.id)
    @user.update(firstname: params[:firstname], lastname: params[:lastname], contact: params[:contact], username: params[:username], address: params[:address])
  end

  def user 

  end

  def userprofile
    @user = User.find(current_user.id)
  end
   
  def show 
    @car = Car.find(params[:id])
  end
  
end
