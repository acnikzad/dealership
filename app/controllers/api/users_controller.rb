class Api::UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @users = User.all
    render json: @users
  end 

  def show
    the_id = params[:id]
    @user = User.find_by(id: the_id)
    render json: @user
  end

  def create
    @user = User.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_digest: params[:password_digest],
      type: params[:type],
      user_id: params[:user_id],
      dealership_id: params[:dealership_id],
      )
    @user.save
    render :show
  end

  def update
    the_id = params[:id]
    @user = User.find_by(id: the_id)
    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.email = params[:email] || @user.email
    @user.password = params[:password] || @user.password
    @user.password_digest = params[:password_digest] || @user.password_digest

    @user.save
    render :show
  end

  def destroy
    @user = User.find_by(id: params[:id])

    if @user.present?
      @user.destroy
      @user.save
    end

    render
  end
end
