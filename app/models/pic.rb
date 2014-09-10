class Pic < ActiveRecord::Base
  belongs_to :user
  has_many :feedbacks

  has_attached_file :image
end
