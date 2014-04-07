class Product < ActiveRecord::Base
  belongs_to        :category
  belongs_to        :brand
  validates         :name, presence: true
  validates         :price, presence: true
  validates         :quantity, presence: true
  has_many          :orders, :through => :lineitems
  

  has_attached_file :image, :styles => { :medium => "5x5>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
                    
  

  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
end
