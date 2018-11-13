class UsersController < ApplicationController
  # before_action :find_user, only: [:edit, :update, :show]

  def index
    @users = User.all
  end

  # def show
  #   # before_action finds the instance
  # end

  # def edit
  #   # before_action finds the instance
  # end

  # def update
  #   # before_action finds the instance
  # end

  def new
    @user = User.new
  end

  def create
   @user = User.create(user_params)
    #TODO Add validation 
  end

  private

    def find_user
      @user = User.find_by(id: params[:id])
    end

    def user_params
      params.require(:user).permit(:name)
    end
  
end