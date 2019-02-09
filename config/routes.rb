Rails.application.routes.draw do
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'user#index'
  get 'user/signup'
  post 'user/signup'
  post 'user/create'
  post 'user/cek_login'
  get 'home/beranda'
  get 'user/logout'

end
