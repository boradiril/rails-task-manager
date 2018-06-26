Rails.application.routes.draw do

  get 'tasks', to: 'tasks#index'

  # Create no.1
  get 'tasks/new', to: "tasks#new"

  patch 'tasks/:id', to: 'tasks#update'

  get 'tasks/:id', to: 'tasks#show', as: "task"

  # Create no.2
  post 'tasks', to: 'tasks#create'

  # Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: "task_edit"

  # delete
  delete 'tasks/:id', to: 'tasks#destroy', as: "task_delete"

  # get 'tasks/create', to: 'tasks#create'
  # get 'tasks/read', to: 'tasks#read'
  # get 'tasks/update', to: 'tasks#update'
  # get 'tasks/destroy', to: 'tasks#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
