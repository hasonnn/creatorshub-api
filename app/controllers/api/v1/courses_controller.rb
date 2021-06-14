class Api::V1::CoursesController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    before_action :find_course, only: [:show, :edit, :update, :destroy]
    before_action :authorize_user!, only: [:edit, :update, :destroy]

    def index
        courses = Course.order created_at: :asc
        render json: courses
    end

    def show
        if @course
            render json: @course.episodes
        else 
            render json: { error: "Course not found!"}
        end
    end

    def create
        course = Course.new course_params
        course.user = current_user
        if course.save
            render json: course
        else
            render(
                json: { error: course.errors },
                status: 422
            )
        end
    end

    def update
        if @course.update course_params
            render json: {}
        end
    end

    def destroy
        @course.destroy
        head :ok
    end

    private

    def course_params
        params.require(:course).permit(:title, :description)
    end

    def find_course
        @course = Course.find params[:id]
    end

    def authorize_user!
        unless can?(:crud, @course)
            render( 
                json: { 
                    status: 401 
                }, 
                status: 401 
            )
        end
    end
end
