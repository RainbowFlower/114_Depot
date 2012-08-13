class Ccategory < ActiveRecord::Base
  validates :title,:ptitle,:presence => true
  validates :title,:uniqueness => true
end
