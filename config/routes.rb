Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :users, only [ :new, :create, :edit, :update, :show ]
  resources :offers do
    resources :reservations, only: [ :create ]
  end
  resources :reservations, only: [ :update, :delete ]
  resources :reviews, only: [ :create ]

  get "/dashboard", to: "pages#dashboard", as: :dashboard
end
