class CommentsController < ApplicationController
	def create
		post = Post.find_by_slug(params[:post_id])
		post.comments.create(params[:comment])
		redirect_to post_path(post)
	end
end