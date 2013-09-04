class Party < ActiveRecord::Base
  attr_accessible :event_date, :event_description, :event_name, :hashtag, :host, :notes, :venue, :image, :rsvp_id, :venue_name, :venue_street, :venue_city, :venue_province, :venue_zipcode, :gmaps, :longitude, :latitude
  validates :event_name, presence: true

  has_many :rsvps
  has_many :users, :through => :rsvps
  has_many :socialviews

  acts_as_gmappable

  mount_uploader :image, ImageUploader


  def gmaps4rails_address
    "#{self.venue_zipcode}"
  end

  def gmaps4rails_infowindow
    "#{self.venue_name}"
  end
end
