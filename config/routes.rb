Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#home"

  get 'realizations', to: 'pages#realizations'
  get 'your_project', to: 'pages#your_project'
  get 'contact', to: 'pages#contact'
  get 'commitments', to: 'pages#commitments'
  get 'dashboard', to: 'pages#dashboard'

  resources :projects, only: [ :show ]
  resources :messages, only: [ :show, :create, :destroy ]
end


