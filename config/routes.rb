Rails.application.routes.draw do
  get 'comments/index'

  get 'comments/new'

  get 'comments/create'

  get 'comments/updaate'

  get 'comments/destroy'

  resources :hotels
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'hotels#index'
end
