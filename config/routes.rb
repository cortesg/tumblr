Rails.application.routes.draw do
  get 'posts/index'

  get 'posts/new'

  get 'posts/edit'

  get 'users/index'

  get 'users/users'

  get 'users/post'

  get 'users/comment'

  get 'users/signinform' => 'users#signinform'
  post 'users/signin' => 'users#signin'

  get 'users/edit/:id' => 'users#edit'

  get 'posts/edit/:id' => 'posts#edit'

  get 'users/signout' => 'users#signout'
  post 'users/signout' => 'users#signout'

  get '/comments' => 'comments#new'
  post '/comments' => 'comments#create'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :posts, :comments

  root 'users#index'
end
