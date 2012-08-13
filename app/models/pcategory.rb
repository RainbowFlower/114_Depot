class Pcategory < ActiveRecord::Base
  validates :title,:presence => true
  validates :title,:uniqueness => true
  def childcategory
    cc=[]
    (Ccategory.all).each {|ccategory|cc[cc.length]=ccategory.title if ccategory.ptitle == self.title}
    return cc
  end
end
