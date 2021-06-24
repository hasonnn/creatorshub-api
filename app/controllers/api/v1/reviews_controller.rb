class Api::V1::ReviewsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_episode, only: [:create]
    # before_action :authorize_user!, only: [:edit, :update, :destroy]

    def create
      @review = Review.new review_params
      @review.episode = @episode
      @review.user = current_user
      if @review.save
        render json: @review
      else
        render(
          json: {errors: @review.errors},
          status: 422
        )
      end
    end

    def destroy
      @review = Review.find params["id"]
      puts @review
      @review.destroy
        render(
          json: {remove: true},
          status: 200
        )
      
    end

    private

    def find_episode
      @episode = Episode.find params[:episode_id]
    end
    
    def review_params
      params.require(:review).permit(:body)
    end

    def authorize_user!
      unless can?(:crud, @review)
          render( 
              json: { 
                  status: 401 
              }, 
              status: 401 
          )
      end
  end
end
