class Product < ActiveRecord::Base
  # list by alphabet
  default_scope :order => 'title'

  has_many :line_items
  has_many :orders, :through => :line_items
  has_many :comments, :dependent => :destroy
  before_destroy :ensure_not_referenced_by_any_line_item

  # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    if line_items.count.zero?
      return true
    else
      errors[:base] << "Line Items present"
      return false
    end
  end

  # validation stuff
  validates :title, :description, :image_url, :author,:publisher,:ISBN,:category_title,:presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :image_url, :format => {
    :with => %r{\.(gif|jpg|png)$}i,
    :message => 'must be a URL for GIF, JPG or PNG image.'
  }

  # search stuff
  def self.search(search)
    results = []
    if search
      search.split(' ').each do |keyword|
        search_condition = "%#{keyword}%"
        results = results + find(:all, :conditions => ['title LIKE ? OR 
                      category_title LIKE ? OR author LIKE ? OR 
                      publisher LIKE ?', search_condition, 
                      search_condition, search_condition, search_condition])
      end
    else
      results = results + find(:all)
    end
    results.uniq
  end
end
