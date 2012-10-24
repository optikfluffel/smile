Smile::Application.routes.draw do
  # Following Routes
  resources :followings

  # Post Routes
  resources :posts

  # User Routes
  authenticated :user do
    root :to => 'home#index'
  end
  devise_for :users
  resources :users

  # Root Route
  root :to => "home#index"

end