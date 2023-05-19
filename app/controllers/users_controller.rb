class UsersController < ApplicationController
    def show 
        user = User.find(params[:id])
        render json: user, include:[:orders => {:include => :brand}], status: :ok
    end 
end
