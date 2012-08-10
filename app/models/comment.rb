class Comment < ActiveRecord::Base
   GRADES = [1,2,3,4,5,6,7,8,9,10]
  belongs_to :product
  belongs_to :user
  validates :commentator, :content, :grade, :presence =>true
end
