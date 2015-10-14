Rails.application.routes.draw do
  get 'students/index'

  get 'students/new'

  get 'students/edit'

  get 'students/destroy'

  get 'students/update'

  get 'students/show'

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
