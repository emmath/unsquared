class AddImageToParties < ActiveRecord::Migration
  def change
    add_column :parties, :image, :string
  end
end
