Rails.application.routes.draw do
  get 'pages/about'

  resources :posts do
    resources :comments
  end
  devise_for :users, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  root'posts#index'
  get'about' => 'pages#about', as: :about
  get 'contact', to: 'messages#new', as: 'contact'
post 'contact', to: 'messages#create'
end
