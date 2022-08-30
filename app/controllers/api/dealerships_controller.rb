class Api::DealershipsController < ApplicationController
    skip_before_action :verify_authenticity_token

  def index
    @dealerships = Dealership.all
    render json: @dealerships
  end 

  def show
    the_id = params[:id]
    @dealership.= Dealership.find_by(id: the_id)
    render json: @dealership
  end

  def create
    @dealership.= Dealership.create(
      name: params[:name],
      phone_number: params[:phone_number],
      address: params[:address],
      city: params[:city],
      cash: params[:cash],
      user_id: params[:user_id]
      )
    @dealership.save
    render :show
  end

  def update
    the_id = params[:id]
    @dealership.= Dealership.find_by(id: the_id)
    @dealership.name = params[:name] || @dealership.name
    @dealership.phone_number = params[:phone_number] || @dealership.phone_number
    @dealership.address = params[:address] || @dealership.address
    @dealership.city = params[:city] || @dealership.city
    @dealership.cash = params[:cash] || @dealership.cash
    @dealership.user_id = params[:user_id] || @dealership.user_id

    @dealership.save
    render :show
  end

  def destroy
    @dealership.= Dealership.find_by(id: params[:id])

    if @dealership.present?
      @dealership.destroy
      @dealership.save
    end

    render
  end

end
