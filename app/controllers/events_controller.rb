class EventsController < ApplicationController

  before_action :find_event, only: [:show, :edit, :update]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    # before_action finds the instance
  end

  def create
    @event = Event.create(event_params)
    #TODO Add validation 
  end

  def edit
    # before_action finds the instance
  end

  def update
    # before_action finds the instance
  end

  private

    def event_params
      params.require(:event).permit(:name,:date)
    end

    def find_event
      @event = Event.find_by(id: params[:id])
    end

end
