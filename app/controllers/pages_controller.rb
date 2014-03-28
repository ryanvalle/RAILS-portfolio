class PagesController < ApplicationController
	def index
		@all_limit_3 = Portfolio.where(:publish => true).limit(3).order('updated_at DESC')		
		@setting = Setting.first
	end

	def resume
	end

	def contact
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(params[:contact])
		if @contact.save
			flash[:success] = 'Message sent.'
			ContactMailer.contact_message(@contact).deliver
			redirect_to contact_path
		else 
			flash[:danger] = "Error sending message. Please fill out all fields or send an email to <a href='mailto:#{Setting.first.siteemail}'>#{Setting.first.siteemail}</a>.".html_safe
				redirect_to contact_path
		end
	end
end
