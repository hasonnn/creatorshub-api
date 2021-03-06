Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :courses, only: [:index, :show] do
        resources :episodes, shallow: true, only: [:show] do
          resources :reviews, only: [:create, :destroy]
        end
      end
      resource :session, only: [:create, :destroy]
      resources :users, only: [:create] do
        get :current, on: :collection
      end
    end
  end
end
