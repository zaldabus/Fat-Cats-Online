class PostsController < ApplicationController
	before_filter :require_user, only: [:new, :create]

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
		@post = Post.create(params[:post])
		@post.user = current_user

		if @post.save
			redirect_to root_path
		else
			render 'new'
		end
	end

end