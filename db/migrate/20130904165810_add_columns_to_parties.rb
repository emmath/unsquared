class AddColumnsToParties < ActiveRecord::Migration
  def change
    add_column :parties, :venue_name, :string
    add_column :parties, :venue_street, :string
    add_column :parties, :venue_city, :string
    add_column :parties, :venue_province, :string
    add_column :parties, :venue_zipcode, :string
  end
end
