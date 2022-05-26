Rails.application.routes.draw do
  post 'auth/register'
  resources :categories, only: :delete
  resources :organizations, only: [] do
    get 'public', on: :member
  end
end
