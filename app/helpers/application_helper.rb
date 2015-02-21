module ApplicationHelper

	def display_image(image_name)
		content_tag(:a, image_tag("#{image_name}"), class: "grid-image")
	end


end
