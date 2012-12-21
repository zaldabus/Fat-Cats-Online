class PostsController < ApplicationController
	def index
	 	@posts = Post.all
  end

  def show
  	@post = Post.where(slug: params[:id]).first

	end

	def new
		@post = Post.new
	end

	def create
		Post.create(params[:post])
		redirect_to root_path
	end

end