class UsersController < ApplicationController

    def index
        @users = User.all 
        render :index
    end

    def show
        @user = User.find(params[:id])
        render :show
    end

    def new
        @user = User.new
        render :new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            login!(@user)
            redirect_to user_url(@user)
        else
            redirect_to new_user_url
        end
    end

    def edit
        @user = User.new
        render :edit
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to user_url(@user)
        else
            @user = User.new(
                username: params[:user][:username],
                password: params[:user][:password])
            render :new
        end 
    end

    def destroy
    end

end
