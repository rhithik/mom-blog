Rails.application.routes.draw do
  devise_for :admins
  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "articles#about"
  resources :articles do
    resources :comments
  end
end
