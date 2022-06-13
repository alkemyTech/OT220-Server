Rails.application.routes.draw do
  post 'auth/register'
  resources :categories, only: %i[index delete]
  resources :organizations, only: [] do
    get 'public', on: :member
  end
end
