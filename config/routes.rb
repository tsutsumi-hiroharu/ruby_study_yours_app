Rails.application.routes.draw do
  root to: 'yours_users#index'
  resources :yours_users  
  # devise_for :users
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
