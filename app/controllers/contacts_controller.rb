class ContactsController < ApplicationController
  
  def new
  	@contact = Contact.new
  	@image_left  = "hero-template-01.png"
  end

  def create
  	@contact = Contact.new(contact_params)
  	if @contact.save
  		redirect_to new_contact_path
  	else
  	end
  end

  def index
  end

  private

  def contact_params
  	params.require(:contact).permit(:name, :email, :subject, :message)
  end

end
