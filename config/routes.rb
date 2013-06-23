Sbonrails::Application.routes.draw do
  devise_for :users

  root :to => 'home#index'

  match 'home/learn' => 'home#learn'
  match 'home/style' => 'home#style'
  match 'home/techniques' => 'home#techniques'
  resources :recipes
  resources :ingredients,:only => [:new, :index, :create, :destroy]
  resources :recipe_ingredients, :only => [:new, :create, :destroy]

end
