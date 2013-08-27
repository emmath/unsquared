class Party < ActiveRecord::Base
  attr_accessible :event_date, :event_description, :event_name, :hashtag, :host, :notes, :venue
  validates :event_name, presence: true
  has_many :socialviews
end
