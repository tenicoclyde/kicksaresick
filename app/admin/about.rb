ActiveAdmin.register About do
  permit_params :description
  
	form do |f|
      f.inputs "Product Details" do
        f.input :description, :label => "Product:"		
      end
      f.actions
    end

	def create
		@product = Product.new(permit_params)
	end 
  
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
