Rails.application.routes.draw do
  devise_for :users
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'udons/top' => 'udons#top'
 
  


  
  resources :users, only: [:index, :show, :new]
  resources :sindans
  resources :udons do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  
  end
  
  resources :sindans
  root 'udons#top'
end
