class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.belongs_to :pic
      t.integer :emoticon

      t.timestamps
    end
  end
end
