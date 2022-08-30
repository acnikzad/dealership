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
      type: params[:type],
      user_id: params[:user_id],
      dealership_id: params[:dealership_id],
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
    @request.type = params[:type] || @request.type
    @request.user_id = params[:user_id] || @request.user_id
    @request.dealership_id = params[:dealership_id] || @request.dealership_id

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
