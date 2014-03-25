class PagesController < ApplicationController
	def index
		@setting = Setting.first
	end
end
