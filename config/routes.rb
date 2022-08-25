Rails.application.routes.draw do
    resources :birds, only: [:index, :show, :create, :update]
    patch "birds/:id/like", to: "birds#increment_likes"

    # This is not working, I need to research more how to do this
    namespace :birds do
        resource :likes, only: :update
    end      
end
