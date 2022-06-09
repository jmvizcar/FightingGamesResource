Rails.application.routes.draw do
  root 'pages#home'
  get '/terms' => 'terms#index'
  get '/terms/:name' => 'terms#show', as: 'term'
  get '/terms/:name/edit' => 'terms#edit', as: 'term_edit'
  patch '/terms/:name' => 'terms#update', as: 'term_update'
  post '/terms/:name/example' => 'terms#create_example', as: 'add_example'
  delete '/terms/:name/example' => 'terms#destroy_example', as: 'destroy_example'
  get '/games/' => 'games#index'
  get '/games/:name' => 'games#show', as: 'game'
  get '/sign_up' => 'registrations#new', as: 'signup'
  post '/sign_up' => 'registrations#create', as: 'users'
  get '/sign_in' => 'sessions#new'
  post '/sign_in' => 'sessions#create', as: 'login'
  get '/profile' => 'sessions#show'
  delete 'logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
