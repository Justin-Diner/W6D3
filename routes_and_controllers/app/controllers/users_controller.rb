class UsersController < ApplicationController
    #let's go!
    def index
        render plain: "This is text"
    end

	def create
		@user = User.new(user_params)
		if @user.save
			render json: @user
		else 
			render json: @user.errors.full_messages, status: :unprocessable_entity
		end
	end

	def user_params
		params.require(:user).permit(:name, :email)
	end

	def show
		@user = User.find(params[:id])
		render json: @user
	end




end