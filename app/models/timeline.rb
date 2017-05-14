class Timeline < ActiveRecord::Base
  has_many :events, dependent: :destroy
  has_many :shared_timelines, dependent: :destroy
  validates :name, presence: true, length: { minimum: 3 }
  belongs_to :user
  belongs_to :timeline_status
end
