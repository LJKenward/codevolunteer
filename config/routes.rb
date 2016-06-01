Rails.application.routes.draw do
  
  get '/' => 'welcome#index'

  root 'welcome#index'

  get '/contact' => 'welcome#contact'

  # get '/login' => 'welcome#login'

  # organization ####################
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get '/organisations' => 'organisations#index'
  get 'organisations/signup' => 'organisations#new'
  # show single organisation
  get '/organisations/:id' => 'organisations#show'

  
  resources :organisations

  # volunterrs ######################
  get '/volunteers/login' => 'volunteer_sessions#new'
  post '/volunteers/login' => 'volunteer_sessions#create'

  get '/volunteers' => 'volunteers#index'
  get 'volunteers/signup' => 'volunteers#new'

  resources :volunteers


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

end
