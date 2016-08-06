Rails.application.routes.draw do
  # get 'welcome/index'


  resources :welcome
  resources :brackets
  resources :teams
  resources :participants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root 'participants#index'
  root 'welcome#index'

end
