class HomepageController < ApplicationController
  def index
    @sale_products = Product.where('sale_status_id = 1')
    @recent_products = Product.order('created_at desc').limit(5).page(params[:page]).per(1)
  end
end
