class Ccategory < ActiveRecord::Base 
  validates :title,:ptitle,:presence => true
  validates :title,:uniqueness => true
  
  def getproducts
    return products = (Product.all).select {|product|product.category_title == self.title}
  end
   
end
