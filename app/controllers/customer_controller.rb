class CustomerController < ApplicationController

  def new
    @customer = Customer.new
  end

  def create
    
     @customer = Customer.new(customer_params)
    
     @customer.save
    
      redirect_to orders_new_path(:customer => @customer)
   end
   private

   def customer_params
     params.require(:customer).permit(:fname, :lname, :phone, :address, :city, :postal_code, :email, :province_id)
    
   end
end
