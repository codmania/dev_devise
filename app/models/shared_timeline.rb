class SharedTimeline < ActiveRecord::Base
  belongs_to :user
  belongs_to :timeline
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create },
            :uniqueness => {:scope => :timeline_id}
end
