Rails.application.routes.draw do
  resources :table_users
  resources :users
  get 'welcome/index'
  get 'welcome/intex'
  root :to => "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
