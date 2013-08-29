class AddRsvpIdToParties < ActiveRecord::Migration
  def change
    add_column :parties, :rsvp_id, :integer
  end
end
