Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api/docs'
  mount Rswag::Api::Engine => '/api/docs'
  post 'auth/register', to: 'users#register'
  post '/auth/login', to: 'users#login'
  delete 'auth/delete/:id', to: 'users#destroy'
  get '/*a', to: 'application#not_found'

  resources :activities, only: %i[update create]  
  resources :categories, only: %i[index create update destroy]
  resources :contacts, only: :create
  resources :news, only: %i[create update destroy] do
    get 'details', on: :member
  end
  resources :organizations, only: [] do
    get 'public', on: :member
  end
  resources :slides, only: %i[index show create]
  resources :users, only: %i[index update]
  resources :members, only: %i[update]
end
