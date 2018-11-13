class EventsController < ApplicationController

  before_action :find_event, only: [:show, :edit, :update]

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
    @event = Event.create(event_params)
    if @event.valid?
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

  private

    def event_params
      params.require(:event).permit(:name,:date,:description,:location)
    end

    def find_event
      @event = Event.find_by(id: params[:id])
    end

end
