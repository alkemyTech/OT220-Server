Rails.application.routes.draw do
  post 'auth/register'
  delete 'auth/delete/:id', to: 'auth#destroy'
  
  resources :categories, only: %i[index delete]
  resources :news, only: %i[create destroy]
  resources :organizations, only: [] do
    get 'public', on: :member
  end
  resources :users, only: %i[index update]
end
