def full_title(title)
	base_title = @setting.sitetitle # changed to call on factory; was Setting.first.sitetitle
	if title.blank?
		base_title
	else
		base_title+' | '+title
	end
end
