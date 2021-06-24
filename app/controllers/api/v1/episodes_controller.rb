class Api::V1::EpisodesController < ApplicationController
    # before_action :authenticate_user!, except: [:index]
    before_action :find_episode, only: [:show, :edit, :update, :destroy]
    before_action :authorize_user!, only: [:edit, :update, :destroy]

    def index
        episodes = Episode.order created_at: :asc
        render json: episodes
    end

    def show
        if @episode
            render json: @episode,
            include: [ :author, { reviews: [ :author ] } ]
        else 
            render json: { error: "Episode not found!"}
        end
    end

    def create 
        episode = Episode.new title: params["title"], description: params["description"], url: params["url"], course_id: params["course_id"], user: current_user
        if episode.save
            render json: episode
        else
            render(
                json: { error: episode.errors },
                status: 422
            )
        end
    end

    def update
        if @episode.update episode_params
            render json: {}
        end
    end

    def destroy
        @episode.destroy
        head :ok
    end

    private

    def episode_params
        params.require(:episode).permit(:title, :description, :url)
    end

    def find_episode
        @episode = Episode.find params[:id]
    end

    def authorize_user!
        unless can?(:crud, @episode)
            render( 
                json: { 
                    status: 401 
                }, 
                status: 401 
            )
        end
    end
end
