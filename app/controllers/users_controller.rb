require 'pry'
class UsersController < ApplicationController

    get "/signup" do
        erb :'/users/signup'
    end 

    post "/signup" do 
        binding.pry
    end 

    get "/login" do 
    end 

    post "/login" do 
    end 

    get "/logout" do 
    end 

end 