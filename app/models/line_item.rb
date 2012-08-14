class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end
  
  # validation stuff
  validates :quantity, :numericality => {:greater_than => 0, :less_than => 1000, :only_integer => true}
end
