Rails.application.routes.draw do
  namespace :api do
    post '/registration' to: 'registrations#create'
  end
  
  resources :users do
    resources :posts do
      resources :comments
    end
  end

end
