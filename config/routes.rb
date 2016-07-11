Rails.application.routes.draw do

  get 'users/signinform' => 'users#signinform'
  post 'users/signin' => 'users#signin'

  get 'users/signout' => 'users#signout'
  post 'users/signout' => 'users#signout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :posts do
    resources :comments
  end

  root 'users#index'

end
