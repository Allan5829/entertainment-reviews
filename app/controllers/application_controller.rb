require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "password_security" #change to secure password
  end

  helpers do

    def is_logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find(session[:user_id])
    end

    #add method that checks if user is logged in and if not redirects

    #add method that checks if a form field is blank or has certain characters

  end

  get "/" do
    erb :welcome
  end

end
