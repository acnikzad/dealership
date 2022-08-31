class Api::DealersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @dealers = Dealer.all
    render json: @dealers
  end 

  def show
    the_id = params[:id]
    @dealer = Dealer.find_by(id: the_id)
    render json: @dealer
  end

  def create
    @dealer = Dealer.create(
      name: params[:name],
      phone_number: params[:phone_number],
      address: params[:address],
      city: params[:city],
      cash: params[:cash],
      user_id: params[:user_id]
      )
    @dealer.save
    render :show
  end

  def update
    the_id = params[:id]
    @dealer = Dealer.find_by(id: the_id)
    @dealer.name = params[:name] || @dealer.name
    @dealer.phone_number = params[:phone_number] || @dealer.phone_number
    @dealer.address = params[:address] || @dealer.address
    @dealer.city = params[:city] || @dealer.city
    @dealer.cash = params[:cash] || @dealer.cash
    @dealer.user_id = params[:user_id] || @dealer.user_id

    @dealer.save
    render :show
  end

  def destroy
    @dealer = Dealer.find_by(id: params[:id])

    if @dealer.present?
      @dealer.destroy
      @dealer.save
    end

    render
  end

end
