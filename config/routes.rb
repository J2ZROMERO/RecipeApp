Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: 'users/confirmations', passwords: 'users/passwords',registrations: 'users/registrations', sessions: 'users/sessions' }

  devise_scope :user do
    root to: "users/sessions#new"
    get '/users/sign_out', to: 'devise/sessions#destroy'
    get '/users/password', to: 'users/passwords#create'
  end
  
  
  

  resources :recipes do 

post :add, on: :member
get :cancel, on: :member
get :add_ingredient, on: :member
post :add_ingredient_alone, on: :member
post :delete_ingredient, on: :member
get :modify, on: :member
get :general_shoping_list, on: :member
post :modify_ingredient, on: :member

    end



  resources :recipe_foods
  resources :foods
  resources :users
  resources :public_recipes
   

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  
end
