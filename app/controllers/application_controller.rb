class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :cart_status
  def cart_status

 		if session[:cart_items].nil?
 		session[:cart_items] = 0
 		session[:items] = []
    session[:quantities] =[]
 	 end

 		@item_count = session[:cart_items]
 	end
end
