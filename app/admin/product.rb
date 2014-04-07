ActiveAdmin.register Product do
  index do
    column :image
    column :name
    column :description
    column :category_id
    column :brand_id
    column :quantity
    column :price do |product|
        number_to_currency product.price
    end
    column :created_at
    default_actions
  end
  
  
  permit_params :name, :description, :category_id, :brand_id, :quantity ,:price, :image
    
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
