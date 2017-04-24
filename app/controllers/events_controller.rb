class EventsController < ApplicationController
  def create
    @timeline = Timeline.find(params[:timeline_id])
    @event = @timeline.events.create(event_params)
    redirect_to timeline_path(@timeline)
  end

  def edit
    @timeline = Timeline.find(params[:timeline_id])
    @event = Event.find(params[:id])
  end

  def show
    @timeline = Timeline.find(params[:timeline_id])
    @event = Event.find(params[:id])
  end

  def update
    @timeline = Timeline.find(params[:timeline_id])
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to timeline_path(@timeline)
  end

  def destroy
    @timeline = Timeline.find(params[:timeline_id])
    @event = @timeline.events.find(params[:id])
    @event.destroy
    redirect_to timeline_path(@timeline)
  end

  private
    def event_params
      params.require(:event).permit(:title, :description, :duedate)
    end
end
