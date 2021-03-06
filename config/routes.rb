Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users/show'

  root "books#index"

  devise_for :users

  resources :books do
    resources :reviews, except: [:show, :index]

    collection do
      get 'search'
    end
  end

  resources :users
end
