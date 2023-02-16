class UsersController < ApplicationController
    #let's go!
    def index
        render plain: "This is text"
    end

	def create
		@user = User.new(params['name'], params['email'])
        @user.save
	end

	def show
		render json: params
	end


end