class Product < ActiveRecord::Base
  attr_accessible :delivered_date, :name, :orderno, :category_id
  
  belongs_to :category
  validates :name, :presence => true
end
