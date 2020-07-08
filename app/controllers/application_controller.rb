require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "d130344b47f6356d3f6fecd908447de5" #change to secure password if have time
  end

  helpers do

    def is_logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find(session[:user_id])
    end

    def redirect_if_not_logged_in
      if is_logged_in? == false #maybe make 1 page responsible for signup and login
        redirect '/login'
      end
    end 

    #add method that checks if current user_id matches the one that tries to edit

  end

  get "/" do
    erb :welcome #to be changed to public reviews
  end

end
