Rails.application.routes.draw do
  root to: 'thread1s#index'
  resources :thread1s
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
