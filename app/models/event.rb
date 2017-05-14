class Event < ActiveRecord::Base
  belongs_to :timeline
  belongs_to :event_status
end
