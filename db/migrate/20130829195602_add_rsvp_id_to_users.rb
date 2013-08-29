class AddRsvpIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rsvp_id, :integer
  end
end
