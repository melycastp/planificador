Rails.application.routes.draw do

  devise_for :users
  #devise_for :installs

  root 'home#index'

  namespace :admin do
    get 'home/index'
  	resources :home, only:[:index]
    resources :eventos
    resources :eventotipos
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
