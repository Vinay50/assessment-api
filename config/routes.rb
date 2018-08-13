Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :assessments,defaults: { format: :json } do
        resources :questions
      end
      resources :answers
      resources :results
    end
  end
end
