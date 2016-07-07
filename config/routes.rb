Rails.application.routes.draw do
  get 'posts/index'

  get 'posts/new'

  get 'posts/edit'

  get 'users/index'

  get 'users/users'

  get 'users/post'

  get 'users/comment'

  get 'users/signin'

  get 'users/edit/:id' => 'users#edit'

  get 'posts/edit/:id' => 'posts#edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :posts, :comments

  root 'users#index'
end
