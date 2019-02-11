Rails.application.routes.draw do
  resources :sub_directories
  resources :directories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
