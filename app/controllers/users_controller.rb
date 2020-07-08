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
            redirect '/' #temp redirect location  
        end
        redirect '/signup'
    end 

    get "/login" do 
        erb :'/users/login'
    end 

    post "/login" do 
        user = User.find_by(:email => params[:email])
 
		if user && user.authenticate(params[:password])
            session[:user_id] = user.id
			redirect '/' #temp redirect location
		else
			redirect '/login'
		end
    end 

    get "/logout" do 
        session.clear
        redirect '/login' #may change the redirect location
    end 

end 