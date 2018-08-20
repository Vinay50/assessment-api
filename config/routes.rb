# frozen_string_literal: true

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  namespace :api do
    namespace :v1 do
      resources :assessments, defaults: { format: :json } do
        resources :questions do
          resources :answers
        end
      end
      resources :results
    end
  end
  namespace :admin do
    resources :assessments
  end
end
