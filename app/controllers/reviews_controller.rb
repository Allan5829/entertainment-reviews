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

    get "/reviews/:id" do
        erb :'/reviews/show'
    end 

    get "/reviews/:id/edit" do 
        erb :'/reviews/edit'
    end 

end 