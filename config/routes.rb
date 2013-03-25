Cookbook::Application.routes.draw do
  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    get 'logout' => :destroy
  end

  resources :sessions
  resources :users
  resources :categories
  resources :recipes
  resources :recipe
  resources :books
  resources :units
  resources :ingredients
  resources :ingredient

  root :to => 'welcome#index'
end
