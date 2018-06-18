Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :create]
      resources :resumes, only: [:index, :show, :create, :destroy] do
        resources :comments, only: [:index, :create, :destroy, :update]
      end
    end
  end
end
