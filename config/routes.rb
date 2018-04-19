Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :hotels, :only => [:show, :index] do
    resources :comments, :only => [:show, :create]
  end

  root 'hotels#index'
end
