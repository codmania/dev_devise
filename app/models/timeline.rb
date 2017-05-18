class Timeline < ActiveRecord::Base
  has_many :events, dependent: :destroy
  has_many :shared_timelines, dependent: :destroy
  belongs_to :user
  belongs_to :timeline_status

  validates :name, presence: true, length: { minimum: 3 }
  validates :timeline_status_id, presence: true
end
