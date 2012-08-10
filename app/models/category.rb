class Category < ActiveRecord::Base
  validates :title,:parent_title,:presence => true
  validates :title, :uniqueness => true
end
