class OrdersController < ApplicationController
  def index
  end

  def show
      @order = Order.find(params[:id])
      @customer = Customer.find(@order.customer_id)
      @items_ordered = @order.order_product.all
  end
  
  def new
        customer = Customer.find(params[:customer])
        order = customer.orders.build
    
        order.status = "Pending"
        order.pst = customer.province.pst
        order.gst = customer.province.gst
    
        subtotal = 0
    
        session[:items].each_with_index do |item, i|
          product = Product.find(item)
          qty = session[:quantities][i]
          line_item = order.line_item.build
          line_item.product_id = product.id
      
          if product.sale_status_id == 1 then
            line_item.price = product.onsale_price
            subtotal += (product.onsale_price * qty)
          else
            line_item.price = product.price
            subtotal += (product.price * qty)
          end
      
          line_item.quantity = qty
          line_item.save     
        end
        order.subtotal = subtotal
        order.total_gst = (subtotal * order.gst)
        order.total_pst = (subtotal * order.pst)
        order.grand_total = (subtotal + order.total_gst + order.total_pst)
        order.save
        
        redirect_to order_show_path(order.id.to_i)
  end

  def add_to_cart
    id = params[:id]
    qty = params[:qty]
    session[:cart_items] += 1 unless session[:items].include?(id)
    session[:items] << id.to_i unless session[:items].include?(id)
    session[:quantities] << qty.to_i unless session[:items].include?(id)
    
    redirect_to root_path
  end
  
  def cart_items
    @cart_items = Product.find_all_by_id(session[:items])
    @subtotal = 0
    @price = 0.0
  end
end
