class BlogsController < ApplicationController
	before_filter :signed_in_user, only: [:new, :edit, :update, :create, :destroy, :show]

	def index
		@blog = Blog.all.where(publish:true).order('created_at DESC').paginate(page: params[:page],per_page: 5)
	end

	def new
		@blog = Blog.new
	end

	def create
		@blog = Blog.new(params[:blog])
		if @blog.save 
			flash[:success] = "Successfully saved <strong>#{@blog.title}</strong>".html_safe
			redirect_to blog_show_path
		else
			flash[:danger] = "Error saving new content"
			render 'edit'
		end
	end

	def edit
		@blog = Blog.find(params[:id])
	end

	def update
		@blog = Blog.find(params[:id])
		if @blog.update_attributes(params[:blog])
			flash[:success] = "#{@blog.title} was successfully saved"
			redirect_to blog_show_path
		else
			flash[:danger] = "Error saving. Check that all fields are properly filled"
			redirect_to blog_edit_path(@blog)
		end
	end

	def show
		@blog = Blog.all.order('updated_at DESC')
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
