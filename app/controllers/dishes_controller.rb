class DishesController < ApplicationController
  before_action :find_dish, only: [:show, :edit, :update, :destroy]
  # TODO: how do we tie in whether the user is logged in?

  def index
    @dishes = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    #TODO Add validation
    if @dish.valid?
      @dish.save
      redirect_to @dish
    else
      flash[:errors] = @dish.errors.full_messages
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
    @dish.delete
    redirect_to dishes_path
  end

  private

  def dish_params
    params.require(:dish).permit(:name)
  end

  def find_dish
    @dish = Dish.find_by(id: params[:id])
  end
end # end of controller
 
