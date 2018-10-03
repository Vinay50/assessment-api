# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount_devise_token_auth_for 'User', at: 'auth'
  namespace :api do
    namespace :v1 do
      resources :assessments, defaults: { format: :json } do
        resources :questions, defaults: { format: :json } do
          resources :answers
        end
      end
      resources :results
    end
  end
  namespace :superadmin do
    resources :assessments
  end
end
