class VotesController < ApplicationController
	def create
		if !logged_in?
			flash[:error] = "You must be logged in to vote!"
  		redirect_to root_path
		else
	  	post = Post.find_by_slug(params[:post_id])
			vote = post.votes.create(params.slice(:direction))
			vote.user = current_user
			if vote.save
				redirect_to root_path
			else
				render 'posts/index'
			end
		end
	end
end