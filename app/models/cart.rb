class Cart < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy
  
  def total_items
	line_items.sum(:quantity)
  end
end
