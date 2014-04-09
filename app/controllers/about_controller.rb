class AboutController < ApplicationController
  def index
    @abouts = About.first
  end
end
