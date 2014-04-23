class ProvincesController < ApplicationController
  def index
    @province = Province.all
  end

  def show
  end

  def new
    @province = Province.new
  end

  def create
    @province = Province.create(province_params)
  end
  
  private
  
  def province_params
    params.require(:province).permit(:name, :pst_rate, :gst_rate)
  end
end
