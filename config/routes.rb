Rails.application.routes.draw do
  # get 'new/show'
  # get 'new/create'
  # get 'new/edit'
  # get 'new/update'
  # get 'new/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :articles
end
