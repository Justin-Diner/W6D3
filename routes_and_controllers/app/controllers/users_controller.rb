class UsersController < ApplicationController
    #let's go!
    def index
        render plain: "This is text"
    end

	def create
		render json: params
	end

	def show
		render json: params
	end
end