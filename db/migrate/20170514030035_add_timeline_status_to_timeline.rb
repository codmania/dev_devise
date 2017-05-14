class AddTimelineStatusToTimeline < ActiveRecord::Migration
  def change
    add_reference :timelines, :timeline_status, index: true, foreign_key: true
  end
end
