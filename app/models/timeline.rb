class Timeline < ActiveRecord::Base
  has_many :events, dependent: :destroy
  validates :name, presence: true, length: { minimum: 3 }
  belongs_to :user
end
