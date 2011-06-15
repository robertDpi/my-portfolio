PortfolioWebsite::Application.routes.draw do
  devise_for :users

  # TODO: Admin route
  # get "admin", :to => "devise/sessions#new"

  # About
  get "about", :to => "pages#about"

  # Contact
  get 'contact', :to => "contact#new"
  post 'contact_mail', :to => "contact#contact_mail"

  # Resource route
  resources :projects do
    member do
      get 'delete'
      post 'destroy'
    end
  end

  # Root
  root :to => "projects#index"
end
