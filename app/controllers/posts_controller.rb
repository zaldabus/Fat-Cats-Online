class PostsController < ApplicationController
	def index
	 	@posts = Post.all
  end

  def show
  	@post = Post.where(slug: params[:id]).first
	end


end