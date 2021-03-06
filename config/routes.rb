Rails.application.routes.draw do
  # root 'brews#index'
  root :to => "home#index"
  resources :brews
  # resources :measures
  # resources :mashes
  # resources :yeasts
  # resources :hops
  resources :ferments
  resources :notes
  # resources :recipes
  # resources :users
  # resources :local_users

  # get '/brew/copy/:id' => 'brews#copy', as: :copy_recipe
  get '/brews/:id/clone' => 'brews#clone', as: :clone_brew
  # get '/recipe/toggle/:id' => 'recipes#toggle', as: :toggle
  get '/brews/:id/versions' => 'brews#versions', as: :versions
  get '/brews/:brew_id/compare/:id' => 'brews#compare', as: :compare
  post '/brews/:id/create' => 'brews#create_version', as: :create_version

  # authentication provider callbacks
  # match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  match '/logout', to: 'sessions#destroy', via: [:destroy]
  # sessions
  get '/brewmaster/new' => 'users#new'
  post '/brewmaster/new' => 'users#create'
  get '/brewmaster/:id' => 'users#show', as: :brewmaster_show
  post '/search' => 'brews#search', as: :search
  post '/search/compare' => 'brews#search_for_compare', as: :search_compare
  get '/brews/:id/master' => 'brews#make_master', as: :make_master
  get '/brews/:id/tree' => 'brews#ancestry_tree', as: :ancestry
  get '/home' => 'brews#home', as: :home
  get '/about' => 'home#about'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
