class PagesController < ApplicationController
	def index
		@setting = Setting.first
	end

	def resume
	end
end
