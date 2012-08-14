class Pcategory < ActiveRecord::Base  
  validates :title,:presence => true
  validates :title,:uniqueness => true
  
   def getchildcategories
    return (Ccategory.all).select {|ccategory|ccategory.ptitle == self.title }
  end
  
  def getproducts
    titles = []
    (Ccategory.all).each {|category|titles << category.title if category.ptitle == self.title }
    return (Product.all).select {|product|titles.include? product.category_title}
  end
   
end
