class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.belongs_to :user
      t.string :location

      t.timestamps
    end
  end
end
