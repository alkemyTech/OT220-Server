Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api/docs'
  mount Rswag::Api::Engine => '/api/docs'
  post 'auth/register'
  delete 'auth/delete/:id', to: 'auth#destroy'
  
  resources :activities, only: %i[update create]
  resources :categories, only: %i[index create update destroy]
  resources :contacts, only: :create
  resources :news, only: %i[create update destroy] do
    get 'details', on: :member
  end
  resources :organizations, only: [] do
    get 'public', on: :member
  end
  resources :users, only: %i[index update]
  resources :slides
end
