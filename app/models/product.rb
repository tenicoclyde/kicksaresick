class Product < ActiveRecord::Base
  belongs_to        :category
  belongs_to        :brand
  validates         :name, presence: true
  validates         :price, presence: true
  validates         :quantity, presence: true
  has_many          :orders, :through => :lineitems
  

  has_attached_file :image, :styles => { :small => "25x25>" },
                    :url  => "/assets/products/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
  
    validates_attachment_presence :image
    validates_attachment_size :image, :less_than => 5.megabytes
    validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
end
