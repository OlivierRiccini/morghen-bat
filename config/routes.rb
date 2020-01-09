Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    devise_for :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: "pages#home"

    get 'realizations', to: 'pages#realizations'
    get 'your_project', to: 'pages#your_project'
    get 'your_project_apartments', to: 'pages#your_project_apartments'
    get 'your_project_houses', to: 'pages#your_project_houses'
    get 'contact', to: 'pages#contact'
    get 'dashboard', to: 'pages#dashboard'

    get 'sitemap', to: 'sitemap#index', defaults: {format: "xml"}

    resources :projects, only: [ :show, :create, :update, :destroy ] do
      resources :pictures, only: [ :create, :update, :destroy ]
    end

    resources :packs, only: [ :create, :update, :destroy ]

    resources :company_histories, only: [ :update ] do
      resources :pictures, only: [ :create, :update, :destroy ]
    end

    resources :messages, only: [ :show, :create, :destroy ]
    resources :company_details, only: [ :update ]
    resources :company_values, only: [ :create, :update, :destroy ]
    resources :company_know_hows, only: [ :create, :update, :destroy ]
    resources :services, only: [ :create, :update, :destroy ]
    resources :banners, only: [ :update ]
    resources :missions, only: [ :update ]
  end
end


