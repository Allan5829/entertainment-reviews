require 'pry'
class ReviewsController < ApplicationController

    get "/reviews" do
        @reviews = Review.all
        erb :'/reviews/index' 
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