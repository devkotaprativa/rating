Rails.application.routes.draw do
  get 'categories/index'

  get 'categories/new'

  get 'categories/edit'

  get 'categories/destroy'

  get 'categories/show'

  get 'categories/update'

  resources :ratings

  devise_for :users
  devise_scope :user do
  authenticated :user do
    root :to => 'ratings#dashboard'
  end
  unauthenticated :user do
    root :to => 'ratings#index', as: :unauthenticated_root
  end
end
end
