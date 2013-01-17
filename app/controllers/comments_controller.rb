class CommentsController < ApplicationController
	before_filter :require_user

	def create
		@post = Post.find_by_slug(params[:post_id])
		@comment = post.comments.new(params[:comment])
		@comment.user = current_user

		if @comment.save
			redirect_to post_path(post)
		else
			render 'posts/show'
		end
	end
end