class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end
	def show
  		@user = Contact.find(params[:id])
	end
	def send_email
		@contact = Contact.new(params[:contact])
		if @contact.save
			flash[:success] = "Welcome"
			
		end
	end
end
