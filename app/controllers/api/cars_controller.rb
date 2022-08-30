class Api::CarsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @cars = Car.all
    render json: @cars
  end 

  def show
    the_id = params[:id]
    @car = Car.find_by(id: the_id)
    render json: @car
  end

  def create
    @car = Car.create(
      year: params[:year],
      make: params[:make],
      model: params[:model],
      color: params[:color],
      drivetrain: params[:drivetrain],
      type: params[:type],
      price: params[:price],
      mileage: params[:mileage],
      dealership_id: params[:dealership_id],
      )
    @car.save
    render :show
  end

  def update
    the_id = params[:id]
    @car = Car.find_by(id: the_id)
    @car.year = params[:year] || @car.year
    @car.make = params[:make] || @car.make
    @car.model = params[:model] || @car.model
    @car.color = params[:color] || @car.color
    @car.drivetrain = params[:drivetrain] || @car.drivetrain
    @car.type = params[:type] || @car.type
    @car.price = params[:price] || @car.price
    @car.mileage = params[:mileage] || @car.mileage
    @car.dealership_id = params[:dealership_id] || @car.dealership_id

    @car.save
    render :show
  end

  def destroy
    @car = Car.find_by(id: params[:id])

    if @car.present?
      @car.destroy
      @car.save
    end

    render
  end
end
