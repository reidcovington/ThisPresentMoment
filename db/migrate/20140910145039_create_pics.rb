class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.belongs_to :user
      t.string :location
      t.attachment :image

      t.timestamps
    end
  end
end
