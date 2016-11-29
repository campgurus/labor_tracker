Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :planned_roles
  resources :roles
  resources :shifts
  resources :associates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "shifts#new"
end
