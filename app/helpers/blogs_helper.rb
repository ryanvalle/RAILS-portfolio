require 'date'
module BlogsHelper
	def line_break(s)
		s.gsub(/\n/, '<br>')
	end

	def blog_date(d)
		return  d.to_time.strftime('Posted %B %d, %Y')
	end
end
