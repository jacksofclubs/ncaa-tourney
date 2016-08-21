Rails.application.routes.draw do
  # get 'welcome/index'


  resources :welcome
  get '/brackets/selectparticipants' => 'brackets#selectparticipants'
  get '/brackets/selectteams' => 'brackets#selectteams'
  resources :brackets do
  	collection do
  		put :activateparticipants
      put :activateteams
  	end
  end
  resources :teams
  resources :participants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root 'participants#index'
  root 'welcome#index'

end
