module PortfoliosHelper

	def put_content(source)
		case source.mediatype.downcase
		when "photography"
			image_tag(return_content(source), class:"img-responsive")
		when "video"
			p "<div class='container'><iframe id='ytplayer' type='text/html' width='100%' height='390'
  src='http://www.youtube.com/embed/#{source.location}?autoplay=1'
  frameborder='0'></iframe></div>".html_safe
		when "web"
			image_tag(return_content(source), class:"img-responsive")
		end
	end

	def return_content(source)
		p source.location
	end

end
