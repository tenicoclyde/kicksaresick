class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :brand
  validates :name, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  has_many   :orders, :through => :lineitems

end
