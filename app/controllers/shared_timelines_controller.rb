class SharedTimelinesController < ApplicationController
  def create
    @timeline = Timeline.find(params[:timeline_id])
    @shared_timelines = @timeline.shared_timelines

    if valid_share
      @share = @timeline.shared_timelines.build(share_params)
      if @share.save
        flash[:notice] = 'Timeline is successfully shared'
      else
        flash[:danger] = @share.errors.full_messages[0]
      end
    else
      flash[:danger] = 'You can not share a timeline with you'
    end

    redirect_to timeline_shared_timelines_path(@timeline, @shared_timelines)
  end

  def index
    @timeline = Timeline.find(params[:timeline_id])
    @shared_timelines = SharedTimeline.where(timeline_id: @timeline.id)
  end

  def destroy
    @timeline = Timeline.find(params[:timeline_id])
    @shared_timelines = @timeline.shared_timelines
    @shared = @timeline.shared_timelines.find(params[:id])
    if @shared.destroy
      flash[:notice] = 'Timeline is successfully unshared'
    else
      flash[:danger] = @share.errors.full_messages[0]
    end

    redirect_to timeline_shared_timelines_path(@timeline, @shared_timelines)
  end

  private
    def valid_share
      current_user.email != params[:shared_timeline][:email]
    end

    def share_params
      {
        user_id: current_user.id,
        timeline_id: params[:timeline_id],
        email: params[:shared_timeline][:email]
      }
    end
end
