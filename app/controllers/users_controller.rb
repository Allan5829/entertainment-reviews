require 'pry'
class UsersController < ApplicationController

    get "/signup" do
        erb :'/users/signup'
    end 

    post "/signup" do #validations catch for presence and uniqueness
        user = User.new(
            :username => params[:username], 
            :email => params[:email],
            :password => params[:password],
            :public => params[:public]) 

        if user.save
            session[:user_id] = user.id
            redirect '/' 
        end

        @failed_user = user
        erb :'/users/signup'
    end 

    get "/login" do 
        erb :'/users/login'
    end 

    post "/login" do 
        user = User.find_by(:email => params[:email])
 
		if user && user.authenticate(params[:password])
            session[:user_id] = user.id
			redirect '/'
        end 

		@failed_user = "failed to login"
        erb :'/users/login'
    end 

    get "/logout" do 
        session.clear
        redirect '/'
    end 

    get "/account/:id" do #EXTRA use slug methods to make urls unique
        redirect_if_not_logged_in

        @user = User.find_by_id(params[:id])
        if @user.id == current_user.id
            erb :'reviews/account'
        else
            redirect "/"
        end 
    end 

end 