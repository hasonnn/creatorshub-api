class Api::V1::ReviewsController < ApplicationController
    # before_action :authenticate_user!
    before_action :find_episode, only: [:create, :destroy]

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
      @review = Review.find params[:id]
      @review.destroy
      head :ok
    end

    private

    def find_episode
      @episode = Episode.find params[:episode_id]
    end
    
    def review_params
      params.require(:review).permit(:body)
    end
end
