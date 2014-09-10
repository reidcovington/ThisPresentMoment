class Pic < ActiveRecord::Base
  belongs_to :user
  has_many :feedbacks
end
