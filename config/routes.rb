Rails.application.routes.draw do
  devise_for :users
  
  resources :ratings

  resources :categories

  
  devise_scope :user do
  authenticated :user do
    root :to => 'ratings#dashboard'
  end
  unauthenticated :user do
    root :to => 'ratings#index', as: :unauthenticated_root
  end
end
end
