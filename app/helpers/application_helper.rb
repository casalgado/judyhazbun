module ApplicationHelper

	def display_image(image_name)
		content_tag(:div, image_tag("#{image_name}"), class: "grid-image")
	end


end
