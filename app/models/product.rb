class Product < ActiveRecord::Base
  belongs_to        :category
  belongs_to        :brand
  validates         :name, :price, :quantity, presence: true
  
  

  has_attached_file :image, :styles => {:small => '50x50>', :medium => '500x500>', :thumb => '100x100>' }, :default_url => "/images/:style/missing.png"

  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
  
  def remove_photo=(value)
     self.image.destroy if value == '1'
  end
  
  def remove_photo
  		'0'
  end
  
 
end
