Rails.application.routes.draw do
  root "authors#index"
  resources :books
  resources :authors do
    member do
      get :books
      delete :delete_image_attachment
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
