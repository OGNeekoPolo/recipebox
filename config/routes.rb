Rails.application.routes.draw do
  resources :steps
  resources :fixins
  resources :recipes


  get '/fixins', to: 'fixins#new'

  post '/recipes/new', to: 'recipes#create'

  post '/recipes/:id', to: 'steps#create'

  post '/fixins/new', to: 'fixins#create'

  post 'steps/new', to: 'steps#create'

  post 'fixins/:id/edit', to: 'fixins#update'

  post 'steps/:id/edit', to: 'steps#update'

  post 'recipes/:id/edit', to: 'recipes#update'

  root 'recipes#index'

end
