module ApplicationHelper
	def fancy_title(title)
		# "this is the fancy " + title
		content_tag :h1, title
	end
end
