Rails.application.routes.draw do

  resources :creditors
  
  root 'creditors#index'
end
