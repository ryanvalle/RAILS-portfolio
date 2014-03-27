class PagesController < ApplicationController
	def index
		@all_limit_3 = Portfolio.all.limit(3).order('updated_at DESC')		
		@setting = Setting.first
	end

	def resume
	end
end
