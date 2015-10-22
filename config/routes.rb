Rails.application.routes.draw do
  match('lists', {:via => :get, :to => 'lists#index'})
  match('lists', {:via => :post, :to => 'lists#create'})
  match('lists/new', {:via => :get, :to => 'lists#new'})
  match('lists/:id', {:via => [:patch, :put], :to => 'lists#update'})
  match('lists/:id', {:via => :get, :to => 'lists#show'})
  match('lists/:id/edit', {:via => :get, :to => 'lists#edit'})
  match('lists/:id', {:via => :delete, :to => 'lists#destroy'})
  match('/', {:via => :get, :to => 'contacts#index'})
end
