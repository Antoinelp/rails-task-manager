Rails.application.routes.draw do
  #Create one task
  get 'tasks/new', to: 'tasks#new', as: :newtask
  post 'tasks', to: 'tasks#create'
  #Read all taks
  get 'tasks', to: 'tasks#index'
  #Read one task
  get 'tasks/:id', to: 'tasks#show', as: :task
  #Update one tak
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'
  #Delete one task
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroytask
end
