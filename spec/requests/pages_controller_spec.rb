require 'spec_helper'

describe PagesController do

	before do
		@setting = Setting.new(sitetitle:'SiteTitle',sitedescription:'SiteDescription',siteemail:'email@site.com',siteowner:'SiteOwner') 
		@setting.save
		visit root_path
	end
	

	subject { page }

	describe "application base title" do
		it { should have_title(full_title(' ')) }
	end

	describe "application homepage content" do
		it { should have_selector('h1.title',text: @setting.sitetitle) }
		it { should have_selector('h2.sitedescription',text: @setting.sitedescription) }
	end
end
