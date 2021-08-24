class AuthController < ApplicationController

    def login
      @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        render json: @user
      else
        render json: { error_message: "Wrong username and/or password!" }
      end
    end

    def signup
      @user = User.new(username: params[:username], password: params[:password], password_confirmation: params[:password])
      if @user.save
        render json: @user
      else
        render json: { error_message: @user.errors.messages }
      end
    end
    
  end