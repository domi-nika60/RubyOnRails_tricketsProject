Rails.application.routes.draw do
  get '/events'  => 'events#index', as: "events"
  get 'events/new'
  post '/events' => 'events#create'
  get 'events/:id' => 'events#show'
  resources :tickets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
