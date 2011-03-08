Mahjong::Application.routes.draw do
  match 'user/edit' => 'users#edit', :as => :edit_current_user
  match 'signup' => 'users#new', :as => :signup
  match 'logout' => 'sessions#destroy', :as => :logout
  match 'login' => 'sessions#new', :as => :login

  resources :sessions
  resources :tables
  resources :users do
    member do
      get 'edit_roles'
      put 'update_roles'
    end
  end

  root :to => "tables#index"
end
