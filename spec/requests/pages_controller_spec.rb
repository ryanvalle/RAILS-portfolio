require 'spec_helper'

describe PagesController do

	let(:setting) {
		@setting = Setting.new(sitetitle:'SiteTitle',sitedescription:'SiteDescription',siteemail:'email@site.com',siteowner:'SiteOwner') 
		@setting.save
	}
	

	subject { page }

	describe "Home page" do
		before { 
			setting
			visit root_path
		}
		it { should have_selector("li.active",text:'HOME') }
		it { should have_title(full_title(' ')) }
		it { should have_selector('h1.title',text: @setting.sitetitle) }
		it { should have_selector('h2.sitedescription',text: @setting.sitedescription) }
	end

	describe "Resume page" do
		before { 
			setting
			visit resume_path 
		}
		it { should have_selector("li.active",text:'RESUME') }
	end

	describe "Photograpy page" do
		before { visit photography_path }
		it { should have_selector("li.active",text:'PORTFOLIO') }
		it { should have_selector("li.active",text:'PHOTOGRAPHY') }
	end

	describe "Video Production page" do
		before { visit photography_path }
		it { should have_selector("li.active",text:'PORTFOLIO') }
		it { should have_selector("li.active",text:'VIDEO PRODUCTION') }
	end

	describe "Web Development page" do
		before { visit photography_path }
		it { should have_selector("li.active",text:'PORTFOLIO') }
		it { should have_selector("li.active",text:'WEB DEVELOPMENT') }
	end

	describe "Contact page" do
		before { visit contact_path }
		it { should have_selector("li.active",text:'CONTACT ') }
	end
	
end

