class AddCoordinatesToParties < ActiveRecord::Migration
  def change
    add_column :parties, :longitude, :float
    add_column :parties, :latitude, :float
  end
end
