Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api/docs'
  mount Rswag::Api::Engine => '/api/docs'
  post 'auth/register'
  delete 'auth/delete/:id', to: 'auth#destroy'
  
  resources :categories, only: %i[index delete]
  resources :news, only: %i[create destroy]
  resources :organizations, only: [] do
    get 'public', on: :member
  end
  resources :users, only: [:index]
end
