Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :list, only: [:index, :show, :new, :create, :destroy] do
    resources :bookmark, only: [:create, :new]
  end
end
