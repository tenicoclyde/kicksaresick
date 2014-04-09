class AboutUsController < ApplicationController
  def index
    @about = About_us.all
  end
end
