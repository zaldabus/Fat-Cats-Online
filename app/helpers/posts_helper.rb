module PostsHelper
	def display_url_link(post)
		if post.url.starts_with?("http://")
			link_to post.title, post.url
		else
			link_to post.title, "http://" + post.url
		end
	end
end
