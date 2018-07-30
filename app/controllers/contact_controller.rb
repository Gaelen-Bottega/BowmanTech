class ContactController < ApplicationController
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new contact_params

		if @contact.valid?
			redirect_to new_contact_url, notice: "Proposal sent, thank you for your interest!"
		else
			render :new
		end
	end

	def contact_params
		params.require(:contact).permit(:name, :email, :job_position, :company_name, :phone, :body)
	end
end
