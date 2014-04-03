class BlogsController < ApplicationController
	before_filter :signed_in_user, only: [:new, :edit, :update, :create, :destroy, :show]

	def new
		@blog = Blog.new
	end

	def create
		@blog = Blog.new(params[:blog])
		if @blog.save 
			flash[:success] = "Successfully saved <strong>#{@blog.title}</strong>".html_safe
			redirect_to admin_path(@blog)
		else
			flash[:danger] = "Error saving new content"
			render 'edit'
		end
	end

	def show
		@blog = Blog.all
	end

	def article
		@blog = Blog.find(params[:id])
	end
	private
		def signed_in_user
			unless signed_in?
				store_location
				redirect_to "#{root_url}admin", notice: "Please sign in." 
			end
		end
end
