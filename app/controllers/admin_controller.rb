class AdminController < ApplicationController
	before_filter :signed_in_user, only: [:show, :new, :edit, :update, :create, :destroy]

	def index
	end

	def auth
		admin = User.find_by_name(params[:admin][:name])
		if admin && admin.authenticate(params[:admin][:password])
			flash[:success] = "Login Success"
			sign_in admin
			redirect_to "#{root_url}admin"
		else
			flash[:danger] = "Invalid username/password"
			sign_out
			redirect_to admin_path
		end
	end

	def show
		@portfolio = Portfolio.all
	end

	def edit
		@item = Portfolio.find(params[:id])
		@portfolio = Portfolio.find(params[:id])
	end

	def update
		@portfolio = Portfolio.find(params[:id])
		if @portfolio.update_attributes(params[:portfolio])
			flash[:success] = "#{@portfolio.title} was successfully saved"
			redirect_to admin_path
		else
			flash[:danger] = "Error saving. Check that all fields are properly filled"
			redirect_to edit_admin_path(@portfolio)
		end

	end

	def destroy
		sign_out
		redirect_to root_path
	end

	def new
		@portfolio = Portfolio.new
	end

	def create
		@portfolio = Portfolio.new(params[:portfolio])
		if @portfolio.save
			flash[:success] = "Successfully posted new item"
			redirect_to portfolio_path
		else
			render 'admin/new'
		end
	end

	private
		def signed_in_user
			unless signed_in?
				store_location
				redirect_to "#{root_url}admin", notice: "Please sign in." 
			end
		end
end
