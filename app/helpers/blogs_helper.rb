module BlogsHelper
	def line_break(s)
		s.gsub(/\n/, '<br>')
	end
end
