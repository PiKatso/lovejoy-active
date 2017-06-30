Rails.application.routes.draw do
  resources :products do
    resources :reviews
  end

  root :to => 'reviews#index'
end
