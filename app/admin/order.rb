ActiveAdmin.register Order do

  index do
    column :customer_id
    column :product_id
    column :shipped_date
    column :tracking_number
    column :status
    column :gst
    column :grandtotal
    column :created_at
    default_actions
  end

  permit_params :customer_id,  :product_id, :shipped_date, :ship_via, :shipping_company,
  :tracking_number, :status, :created_at, :updated_at, :gst, :pst, :subtotal, :grandtotal
  
  

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
