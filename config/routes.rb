Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    devise_for :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: "pages#home"

    get 'realizations', to: 'pages#realizations'
    get 'your_project', to: 'pages#your_project'
    get 'contact', to: 'pages#contact'
    get 'commitments', to: 'pages#commitments'
    get 'dashboard', to: 'pages#dashboard'

    resources :projects, only: [ :show, :create, :update, :destroy ]
    resources :company_histories, only: [ :update ]
    resources :pictures, only: [ :create, :update, :destroy ]
    resources :messages, only: [ :show, :create, :destroy ]
    resources :company_details, only: [ :update ]
    resources :company_values, only: [ :create, :update, :destroy ]
    resources :company_know_hows, only: [ :create, :update, :destroy ]
  end
end


