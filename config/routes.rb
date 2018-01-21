Rails.application.routes.draw do
  get '/fruits' => 'fruits#index'
  get '/fruits/new' => 'fruits#new'
  get '/fruits/:id' => 'fruits#show'
  post '/fruits' => 'fruits#create'
  get '/fruits/:id/edit' => 'fruits#edit'
  patch '/fruits/:id' => 'fruits#update'
  delete '/fruits/:id' => 'fruits#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
