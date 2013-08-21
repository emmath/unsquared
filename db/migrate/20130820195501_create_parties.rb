class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :event_name
      t.datetime :event_date
      t.string :venue
      t.text :event_description
      t.string :host
      t.string :hashtag
      t.text :notes

      t.timestamps
    end
  end
end
