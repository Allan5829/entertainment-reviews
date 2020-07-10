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
    end 

    get "/reviews/:id" do
        @review = Review.find_by_id(params[:id])
        erb :'/reviews/show'
    end 

    get "/reviews/:id/edit" do 
        @review = Review.find_by_id(params[:id])
        if @review.user_id == current_user.id
            erb :'/reviews/edit'
        else
            redirect "/reviews/#{@review.id}"
        end 
    end 

    patch "/tweets/:id" do 
        @review = Review.find_by_id(params[:id])

        @review.type_of_media = params[:type_of_media]
        @review.name = params[:name]
        @review.completion = params[:completion]
        @review.review_score = params[:review_score]
        @review.review_body = params[:review_body]
        @review.save
        redirect to "/reviews/#{@review.id}"
    end  

end 