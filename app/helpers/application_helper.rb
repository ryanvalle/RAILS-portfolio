module ApplicationHelper
	
	def full_title(title)
		base_title = Setting.first.sitetitle
		if title.empty?
			base_title
		else
			"#{base_title} | #{title}".html_safe
		end
	end

	def is_active?(title,page_title)
		if title == page_title
			true
		end
	end

end
