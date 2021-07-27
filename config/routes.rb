Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'courses#index'
  resources :courses
  resources :students, except: [:destroy]

  get 'about', to: 'pages#about'

end