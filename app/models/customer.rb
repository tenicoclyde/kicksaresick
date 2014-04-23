class Customer < ActiveRecord::Base
  has_many :orders
  belongs_to :province
  validates :fname, :lname, :phone, :address, :city, :postal_code, presence: true
end
