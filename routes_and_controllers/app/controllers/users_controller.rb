class UsersController < ApplicationController
    #let's go!
    def index
        render plain: "This is text"
    end

	def create
		@user = User.new(params.require(:user).permit(:name, :email))
		#render json: params
		if @user.save
			render plain: "Successful!"
		else 
			render json: user.errors.full_messages, status: :unprocessable_entity
		end
	end

	def show
		render json: params
	end




end