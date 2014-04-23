class Province < ActiveRecord::Base
  has_many :customer
  validates :name, presence: true
  validates :pst, :gst, numericality: {less_than_or_equal_to: 0.8, greater_than_or_equal_to: 0}
end
