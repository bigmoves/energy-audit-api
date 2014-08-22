Rails.application.routes.draw do
  get 'me.json' => 'users#me'
  post '/signup' => 'users#create'
  post '/login' => 'session#create'
  get '/sign' => 'upload#sign'

  resources :attachments, except: [:new, :edit]
  resources :equipment, except: [:new, :edit]
  resources :spaces, except: [:new, :edit]
  resources :buildings, except: [:new, :edit]
end
