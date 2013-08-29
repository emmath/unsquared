class AddColumnsToRsvps < ActiveRecord::Migration
  def change
    add_column :rsvps, :user_id, :integer
    add_column :rsvps, :party_id, :integer
  end
end
