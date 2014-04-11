class HomepageController < ApplicationController
  def index
    
    @recent_products = Product.order('released_at desc')
  end
end
