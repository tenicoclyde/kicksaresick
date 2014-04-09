class ContactUsController < ApplicationController
  
  def index
    @contact = ContactUs.all
  end
  
  def show
  end
  
  def create
    @contact = ContactUs.new(contact_params)
    @contact.save
  end
  
  def new
    @contact = ContactUs.new
  end
  
  def edit
  end 
  
  private 
  
  def contact_params
    params.require(:contact_us).permit(:email, :phone, :address)  
  end
  
end
