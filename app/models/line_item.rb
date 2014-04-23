class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order
  
  validates :price, :quantity, numericality: {greater_than_or_equal_to: 0}
  validates :price, :quantity, presence: true
end
