Rails.application.routes.draw do
  post '/messages', to: 'messages#create'
  # todo router直す
  get 'messages/destroy'
  resources :rooms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
