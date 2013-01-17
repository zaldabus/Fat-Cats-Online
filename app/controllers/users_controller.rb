class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new
		@user.password = params[:user][:password]
		@user.username = params[:user][:username]

		 if @user.save
			redirect_to root_path, notice: "User account created!"
		else
			render 'new'
		end
	end

	def show
		@user = current_user
		@created_less_than_a_week_ago = @user.created_at > 1.week.ago
	end
end
