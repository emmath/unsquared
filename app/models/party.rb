class Party < ActiveRecord::Base
  attr_accessible :event_date, :event_description, :event_name, :hashtag, :host, :notes, :venue, :image, :rsvp_id
  validates :event_name, presence: true

  has_many :rsvps
  has_many :users, :through => :rsvps
  has_many :socialviews

  mount_uploader :image, ImageUploader
end
