PortfolioWebsite::Application.routes.draw do
  # Users
  devise_for :users do
     get 'login', :to => 'devise/sessions#new'
  end

  # About
  get 'about', :to => 'pages#about'

  # Contact
  get 'contact', :to => 'contact#new'
  post 'contact_mail', :to => 'contact#contact_mail'

  # Projects
  resources :projects do
    member do
      get 'delete'
      post 'destroy'
    end
  end

  # Root
  root :to => 'projects#index'
end
