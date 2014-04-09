ActiveAdmin.register Product do

	form do |f|
      f.inputs "Product Details" do
				f.input :category_id, :as => :select, :collection => Category.all
        f.input :brand_id, :as => :select, :collection => Brand.all
        f.input :name, :label => "Product:"
        f.input :description, :label => "Description:"
        f.input :image, :as => :file, :label => "Attach Image"
        f.input :remove_photo, as: :boolean, required: :false, label: 'Remove Photo'
        f.input :price, :label => "Price:"
        f.input :quantity, :label => "Quantity:"			
      end
      f.actions
    end

	def create
		@product = Product.new(permit_params)
	end 
  
  
  permit_params  :name, :description, :category_id, :brand_id, :quantity ,:price, :image, :delete_image, :remove_photo
    
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
