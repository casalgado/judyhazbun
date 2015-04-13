module ApplicationHelper

	def display_image(image_name)
		content_tag(:a, image_tag("#{image_name}"), class: "grid-image", id: "#{image_name.split("/")[-1][0..-5]}")
	end

	# def display_modal_image(image_name)
	# 	content_tag(:div, image_tag("#{image_name}"))
	# end

	def display_section_image(image_name)
		content_tag(:div, image_tag("#{image_name}"))
	end

	def display_show_image(graphic)
		content_tag(:a, image_tag(graphic.visual.url(:small)), class: "grid-image", id: "#{graphic.visual.url(:medium)}", data: "#{graphic.description}")
	end

	# def display_edit_image(graphic)
	# 	content_tag(:div, link_to(image_tag(graphic.visual.url(:small)), edit_graphic_path(graphic)), class: "grid-image", id: "#{graphic.id}", data: "")
	# end

	def display_edit_image(graphic)
		content_tag(:div, class: "grid-image edit-image", id: "#{graphic.id}", data: "") do
	  	@content = content_tag(:div, image_tag(graphic.visual.url(:small)), class: "", id: "#{graphic.id}", data: "")
			@content << content_tag(:div, link_to("EDITAR", edit_graphic_path(graphic, section_id: graphic.section.id)), class: "edit-image-overlay-link")
			@content << content_tag(:h1, "#{graphic.position}", class: "edit-image-overlay")
		end
	end


end
