class DishesController < ApplicationController
  before_action :find_dish, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create]
  # TODO: how do we tie in whether the user is logged in?

  def index
    @dishes = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def create
    @user = current_user
    @dish = Dish.new(dish_params)
    @dish.user = current_user # suga
    #TODO Add validation
    if @dish.valid?
      @dish.save
      redirect_to @dish
    else
      flash[:errors] = @dish.errors.full_messages
      redirect_to new_dish_path
    end
  end

  def show
    # before_action finds the instance
  end

  def edit
    # before_action finds the instance
  end

  def update
    # before_action finds the instance
  end

  def destroy
    # before_action finds the instance
    @dish.destroy
    redirect_to dishes_path
  end


  private

  def dish_params
    params.require(:dish).permit(:name, :description)
  end

  def find_dish
    @dish = Dish.find_by(id: params[:id])
  end
end # end of controller
<<<<<<< HEAD
 
=======
>>>>>>> add origin
