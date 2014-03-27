module PagesHelper
	def put_content_home(source)
		case source.mediatype.downcase
		when "photography"
			p "<a href='#{photography_path}/#{source.id}'><div class='image-crop' style='background: url(#{source.location}) no-repeat; background-size:cover'></div></a>".html_safe
			# image_tag(return_content(source), class:"img-responsive")
		when "video"
			vidloc = "http://img.youtube.com/vi/#{source.location}/mqdefault.jpg"
			p "<a href='#{video_path}/#{source.id}'><div class='image-crop' style='background: url(#{vidloc}) no-repeat; background-size:cover'></div></a>".html_safe
		when "web"
			p "<a href='#{web_path}/#{source.id}'><div class='image-crop' style='background: url(#{source.location}) no-repeat; background-size:cover'></div></a>".html_safe
		end
	end
end
