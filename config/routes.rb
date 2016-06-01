Rails.application.routes.draw do
  
  get '/' => 'welcome#index'

  root 'welcome#index'

  get '/contact' => 'welcome#contact'

  # get '/login' => 'welcome#login'

  # organization user ####################
  get '/organisations/login' => 'sessions#new'
  post '/organisation/login' => 'sessions#create'
  delete '/organisations/logout' => 'sessions#destroy'

  # organisation pages #####################
  get '/organisations' => 'organisations#index'
  get 'organisations/signup' => 'organisations#new'
  # show single organisation
  get '/organisations/:id' => 'organisations#show'
  
  resources :organisations

  # volunteer user ######################
  get '/volunteers/login' => 'volunteer_sessions#new'
  post '/volunteers/login' => 'volunteer_sessions#create'
  delete '/organisations/logout' => 'volunteer_sessions#destroy' #NEED TO CREATE THIS ELSE WHERE?


  # volunteer pages #####################
  get '/volunteers' => 'volunteers#index'
  get 'volunteers/signup' => 'volunteers#new'

  resources :volunteers

end
