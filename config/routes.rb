Rails.application.routes.draw do
  get 'experiences/new'
  root   'home#index'   # root is          get '/'
  get    'edit'    => 'home#edit'

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'

  delete 'logout'  => 'sessions#destroy'
  get    'logout'  => 'sessions#destroy'
  
  get    'signup'  => 'users#signup'
  post   'signup'  => 'users#signup'

  resources :profiles , only: [:update]
  resources :educations , only: [:new]
end
