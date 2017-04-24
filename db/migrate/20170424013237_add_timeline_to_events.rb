class AddTimelineToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :timeline, index: true, foreign_key: true
  end
end
