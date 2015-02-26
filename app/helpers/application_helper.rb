module ApplicationHelper

	def display_image(image_name)
		content_tag(:a, image_tag("#{image_name}"), class: "grid-image", id: "#{image_name.split("/")[-1][0..-5]}")
	end

	def display_modal_image(image_name)
		content_tag(:div, image_tag("#{image_name}"))
	end


end
