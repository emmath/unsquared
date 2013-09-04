class AddGmapsToParties < ActiveRecord::Migration
  def change
    add_column :parties, :gmaps, :boolean
  end
end
