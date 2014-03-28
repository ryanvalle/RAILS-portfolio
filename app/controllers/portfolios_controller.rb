class PortfoliosController < ApplicationController
	def index
		@web_limit_3 = Portfolio.where(:mediatype => "Web", :publish => true).limit(3).order('updated_at DESC')
		@photo_limit_3 = Portfolio.where(:mediatype => "Photography", :publish => true).limit(3).order('updated_at DESC')
		@video_limit_3 = Portfolio.where(:mediatype => "Video", :publish => true).limit(3).order('updated_at DESC')
	end

	def show
		@item = Portfolio.find(params[:id])
		check_publish(@item)
		@photo = Portfolio.where(:mediatype => "Photography", :publish => true).order('updated_at DESC')
		@video = Portfolio.where(:mediatype => "Video", :publish => true).order('updated_at DESC')
		@web = Portfolio.where(:mediatype => "Web", :publish => true).order('updated_at DESC')
	end

	def photography
		@photo = Portfolio.where(:mediatype => "Photography", :publish => true).order('updated_at DESC')
	end

	def video
		@video = Portfolio.where(:mediatype => "Video", :publish => true).order('updated_at DESC')
	end

	def web
		@web = Portfolio.where(:mediatype => "Web", :publish => true).order('updated_at DESC')
	end

	private
		def check_publish(source)
			if !source.publish? && !signed_in?
				redirect_to root_path
			end
		end


end
