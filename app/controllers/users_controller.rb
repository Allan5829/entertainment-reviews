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
    end 

    post "/login" do 
    end 

    get "/logout" do 
    end 

end 