Rails.application.routes.draw do
  post 'auth/register'
  delete 'auth/delete/:id', to: 'auth#destroy'
  
  resources :activities, only: %i[create]
  resources :categories, only: %i[index delete]
  resources :news, only: %i[create destroy] do
    get 'details', on: :member
  end
  resources :organizations, only: [] do
    get 'public', on: :member
  end
  resources :users, only: %i[index update]
end
