class Cart < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy
  
  def total_items
	  line_items.sum(:quantity)
  end

  def total_price
    line_items.to_a.sum{ |item| item.total_price}
  end

  def add_product(product_id, quantity)
    current_item = line_items.where(:product_id => product_id).first
    if current_item
      current_item.quantity += quantity.to_i
    else
      current_item = LineItem.new(:product_id=>product_id)
	  current_item.quantity = quantity.to_i
      line_items << current_item
    end
    current_item
  end
end
