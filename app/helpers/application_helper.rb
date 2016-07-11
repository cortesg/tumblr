module ApplicationHelper
	def fancy_title(title)
		# "this is the fancy " + title
		content_tag :h1, title #h1 tag created
	end

	def tumblr_anchor
		link_to "Real Tumblr", "http://www.tumblr.com", :target => "_blank" #opens in new tag
	end
end
