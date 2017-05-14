module TimelinesHelper
  def is_owner?(user, timeline)
    shared_timeline = SharedTimeline.find_by(timeline_id: timeline.id)
    if user and shared_timeline
      user.id == shared_timeline.user_id
    else
      false
    end
  end
end
