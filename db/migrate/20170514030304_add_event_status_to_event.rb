class AddEventStatusToEvent < ActiveRecord::Migration
  def change
    add_reference :events, :event_status, index: true, foreign_key: true
  end
end
