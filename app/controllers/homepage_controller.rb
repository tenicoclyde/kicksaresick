class HomepageController < ApplicationController
  def index
    @onsale_products = Product.find('where onsale_price > 0.0')
    @recent_products = Product.order('released_at desc')
  end
end
