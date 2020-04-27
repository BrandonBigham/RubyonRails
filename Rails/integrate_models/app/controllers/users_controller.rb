class UsersController < ApplicationController
  def index
    @user = User.all
    render json: @user
  end

  def new
  end

  def create
    User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], age: params[:age])
    redirect_to '/users'
  end

  def show
    render json: User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def total
    render json: {total: User.count}
  end
end
