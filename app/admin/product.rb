ActiveAdmin.register Product do

	form do |f|
      f.inputs "Product Details" do
				f.input :category_id, :as => :select, :collection => Category.all
        f.input :brand_id, :as => :select, :collection => Brand.all
        f.input :sale_status_id, :as => :select, :collection => SaleStatus.all
        f.input :name, :label => "Product:"
        f.input :description, :label => "Description:"
        f.input :image, :as => :file, :label => "Attach Image"
        f.input :remove_photo, as: :boolean, required: :false, label: 'Remove Photo'
        f.input :price, :label => "Price:"
        f.input :onsale_price, :label => "Sale Price:"
        f.input :quantity, :label => "Quantity:"			
      end
      f.actions
    end

	def create
		@product = Product.new(permit_params)
	end 
  
  index do
    column :name
    column :description
    column :category
    column :quantity
    column :brand
    column :image_file_name
    column :price do |product|
        number_to_currency product.price
    end
    column :onsale_price do |product|
        number_to_currency product.onsale_price
    end
    column :created_at
    default_actions
  end
  
  permit_params  :name, :description, :category_id, :brand_id, :quantity ,:price, :image,:onsale_price, :sale_status_id, :delete_image, :remove_photo
    
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
