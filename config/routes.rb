Rails.application.routes.draw do
  root to: 'home#index'

  ActiveAdmin.routes(self)

  devise_for :users, controllers: { registrations: 'registrations', omniauth_callbacks: "callbacks"  }
  resource   :photo
  resources  :battles
  resources :top, only: [:index]
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
