class Api::RequestsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @requests = Request.all
    render json: @requests
  end 

  def show
    the_id = params[:id]
    @request = Request.find_by(id: the_id)
    render json: @request
  end

  def create
    @request = Request.create(
      year: params[:year],
      make: params[:make],
      model: params[:model],
      color: params[:color],
      drivetrain: params[:drivetrain],
      car_type: params[:car_type],
      status: params[:status],
      comment: params[:comment],
      user_id: params[:user_id],
      dealer_id: params[:dealer_id],
      car_id: params[:car_id]
      )
    @request.save
    render :show
  end

  def update
    the_id = params[:id]
    @request = Request.find_by(id: the_id)
    @request.year = params[:year] || @request.year
    @request.make = params[:make] || @request.make
    @request.model = params[:model] || @request.model
    @request.color = params[:color] || @request.color
    @request.drivetrain = params[:drivetrain] || @request.drivetrain
    @request.car_type = params[:car_type] || @request.car_type
    @request.comment = params[:comment] || @request.comment
    @request.status = params[:status] || @request.status
    @request.user_id = params[:user_id] || @request.user_id
    @request.dealer_id = params[:dealer_id] || @request.dealer_id
    @request.car_id = params[:car_id] || @request.car_id

    @request.save
    render :show
  end

  def destroy
    @request = Request.find_by(id: params[:id])

    if @request.present?
      @request.destroy
      @request.save
    end

    render
  end
end
