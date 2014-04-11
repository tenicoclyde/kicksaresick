class Product < ActiveRecord::Base
  belongs_to        :category
  belongs_to        :brand
  belongs_to        :sale_status
  validates         :name, :price, :quantity, presence: true
  
  attr_accessor :default_url, :default_style
  
  has_attached_file :image,
                    :styles => { :large => "500x500>", :medium => "300x300!", :thumb => "100x100>" },
                    :default_url => "/images/:style/missing.png" 
                   
  
              
  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
  
  def remove_photo=(value)
     self.image.destroy if value == '1'
  end
  
  def remove_photo
  		'0'
  end
  
 
end
