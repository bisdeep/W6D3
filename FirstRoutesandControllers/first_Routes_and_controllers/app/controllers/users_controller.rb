class UsersController < ApplicationController
    #artshare phase 1: remove :email refs, rename :name into :username
    
    def index
        @users = User.all #fetch all users
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.new(params.require(:user).permit(:username))
        if @user.save
          render json: @user
        else
          render json: @user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def update
        @user = User.find(params[:id])

        if @user.update(user_params) #calls update from ActiveRecord
            redirect_to users_url(@user)
        else
            render json: @user.errors.full_messages, status: 422
            #renders json
        end

    end

    def destroy
        @user = User.find(params[:id])#we can only destroy if we already have it
        @user.destroy
        redirect_to users_url
    end




    private

    def user_params
        params.require(:user).permit(:username)
    end

end