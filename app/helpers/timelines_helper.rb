module TimelinesHelper
  def is_owner?(user, timeline)
    if user and timeline
      user.id == timeline.user_id
    else
      false
    end
  end

  def get_status_icon(timeline)
    status = timeline.timeline_status
    if not status
      ''
    elsif status.name == 'open'
      'glyphicon glyphicon-flag'
    elsif status.name == 'closed'
      'glyphicon glyphicon-remove'
    end
  end
end
