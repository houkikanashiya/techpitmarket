Rails.application.routes.draw do
  devise_for :users
  # get 'top/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "top#index"
  
  # ここの行を追加する
  resources :users, only: %i(index show)
end
