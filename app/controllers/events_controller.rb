class EventsController < ApplicationController

  before_action :find_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only:[:create,:edit,:destroy]
  

  def index
    @events = Event.all
    #TODO Search function
  end

  def new
    @event = Event.new
  end

  def show
    # before_action finds the instance
  end

  def create
    @user = current_user
    @event = Event.new(event_params)
    @event.user = current_user #that devise magic
    if @event.valid?
      @event.save
      redirect_to @event
    else
      flash[:errors] = @event.errors.full_messages
      redirect_to new_event_path
    end
  end

  def edit
    # before_action finds the instance
  end

  def update
    # before_action finds the instance
    @event.update(event_params)
    redirect_to @event
  end

  def destroy
    @event.destroy    
  end

  private

    def event_params
      params.require(:event).permit(:name,:date,:time,:description,:location)
    end

    def find_event
      @event = Event.find_by(id: params[:id])
    end

end # END OF EVENTS CONTROLLER
