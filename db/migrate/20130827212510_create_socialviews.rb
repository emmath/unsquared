class CreateSocialviews < ActiveRecord::Migration
  def change
    create_table :socialviews do |t|
      t.string :tag

      t.timestamps
    end
  end
end
