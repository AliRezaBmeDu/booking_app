Rails.application.routes.draw do
  
  namespace :api do
    post '/register', to: 'registrations#create'
  end

  resources :users do
    resources :posts do
      resources :comments
    end
  end

  root 'registrations#index'
end
