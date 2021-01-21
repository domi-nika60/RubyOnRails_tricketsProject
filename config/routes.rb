Rails.application.routes.draw do
  #get 'events/index'
  #get 'events/new'
  #get 'events/create'
  #get 'events/show'
  #get 'events/:id' => 'events#show'
  #post '/events' => 'events#create'
  resources :events, :only => [:index, :new, :create, :show]
  resources :tickets
   root :to => "tickets#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
