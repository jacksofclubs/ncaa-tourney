module ApplicationHelper

	# sets the navbar to 'active' if active
	def cp(path)
		"active" if current_page?(path)
	end

end
