class Rsvp < ActiveRecord::Base
  attr_accessible :guests

  belongs_to :party
  belongs_to :user

end
