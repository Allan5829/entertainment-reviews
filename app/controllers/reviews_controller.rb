require 'pry'
class ReviewsController < ApplicationController

    get "/reviews" do 
        @reviews = Review.all #will modify to only look for public reviews
        erb :'/reviews/index' 
    end 

    get "/reviews/new" do 
        erb :'/reviews/new'
    end 

    post "/reviews" do 
        @review = current_user.reviews.build(params)

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

    patch "/reviews/:id" do 
        @review = Review.find_by_id(params[:id])

        if @review.update(
            type_of_media: params[:type_of_media], 
            name: params[:name], completion: params[:completion],
            review_score: params[:review_score], review_body: params[:review_body]
            )

            redirect to "/reviews/#{@review.id}"
        end
        redirect to "/reviews/#{@review.id}/edit"
    end  

    delete "/reviews/:id/delete" do
        @review = Review.find_by_id(params[:id])
        if @review.user_id == current_user.id
            @review.delete
            redirect "/reviews"
        else
            redirect "/reviews/#{@review.id}"
        end 
    end

end 