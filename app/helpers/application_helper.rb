module ApplicationHelper

	def display_image(image_name)
		content_tag(:a, image_tag("#{image_name}"), class: "grid-image", id: "#{Rails.root}/app/assets/images/#{image_name.gsub('grid', 'modal')[0..-5]}")
	end


end
