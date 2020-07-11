require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "d130344b47f6356d3f6fecd908447de5" #EXTRA hide the password
  end

  helpers do

    def is_logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find(session[:user_id])
    end

    def redirect_if_not_logged_in
      if is_logged_in? == false
        redirect '/login'
      end
    end 

  end

  get "/" do
    @users = User.where(public: true)
    erb :'/reviews/index'
  end

end
