class Rsvp < ActiveRecord::Base
  attr_accessible :guests, :user_id, :party_id

  belongs_to :party
  belongs_to :user

end
