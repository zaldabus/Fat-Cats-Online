class FormsController < ApplicationController
	def new
		@post = Post.new
	end

	def create
		render json: params
	end
end