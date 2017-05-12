module TimelinesHelper
  def is_owner?(user, timeline)
    shared_timeline = SharedTimeline.find_by(timeline_id: timeline.id)
    return user.id == shared_timeline.user_id
  end
end
