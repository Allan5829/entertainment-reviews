require 'pry'
class ReviewsController < ApplicationController
    #EXTRA make options to display public reviews in certain order

    get "/reviews" do 
        redirect '/'
    end 

    get "/reviews/new" do 
        redirect_if_not_logged_in

        erb :'/reviews/new'
    end 

    post "/reviews" do 
        redirect_if_not_logged_in

        @review = current_user.reviews.build(params)

        if @review.save
            redirect "/account/#{current_user.id}"
        end 
        redirect '/reviews/new'
    end 

    get "/reviews/:id" do
        redirect_if_not_logged_in

        set_review
        erb :'/reviews/show'
 
    end 

    get "/reviews/:id/edit" do 
        redirect_if_not_logged_in

        @review = Review.find_by_id(params[:id])
        if @review.user_id == current_user.id
            erb :'/reviews/edit'
        else
            redirect "/reviews/#{@review.id}"
        end 
    end 

    patch "/reviews/:id" do 
        redirect_if_not_logged_in

        @review = Review.find_by_id(params[:id])

        if @review.user_id == current_user.id && @review.update(
            type_of_media: params[:type_of_media], 
            name: params[:name], completion: params[:completion],
            review_score: params[:review_score], review_body: params[:review_body]
            )

            redirect to "/reviews/#{@review.id}"
        end
        redirect to "/reviews/#{@review.id}/edit"
    end  

    delete "/reviews/:id/delete" do
        redirect_if_not_logged_in

        @review = Review.find_by_id(params[:id])
        if @review.user_id == current_user.id
            @review.delete
            redirect "/account/#{current_user.id}"
        else
            redirect "/reviews/#{@review.id}"
        end 
    end

    private 
    def set_review
        if !(@review = Review.find_by_id(params[:id]))
            redirect '/'
        end
    end 

end 