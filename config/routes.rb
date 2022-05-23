Rails.application.routes.draw do
  post 'auth/register'
  resources :categories, only: :delete
end
