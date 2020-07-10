require 'pry'
class ReviewsController < ApplicationController

    get "/reviews" do 
        @reviews = Review.all #will modify to only look for public reviews
        erb :'/reviews/index' 
        #<% user = User.find_by_id(review.user_id) %> will be inside index.erb
        #<%= user.username %> 
    end 

    get "/reviews/new" do 
        erb :'/reviews/new'
    end 

    post "/reviews" do 
        @review = Review.new(params)
        @review.user_id = current_user.id

        if @review.save
            redirect '/reviews'
        end 
        redirect '/reviews/new'
        binding.pry
    end 

    get "/reviews/:id" do
        erb :'/reviews/show'
    end 

    get "/reviews/:id/edit" do 
        erb :'/reviews/edit'
    end 

end 