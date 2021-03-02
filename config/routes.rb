Rails.application.routes.draw do
  # main page
  get 'tasks', to: "tasks#index"
  # display form
  get "tasks/new", to: "tasks#new"
  # detail page, as :rename the prefix
  get "tasks/:id", to: "tasks#show", as: :task
  # send form
  post "tasks", to: "tasks#create"
  #edit a task, longer urls don't gert displayed as prefixes
  get "tasks/:id/edit", to: "tasks#edit", as: :tasks_edit
  # patch / paste the edit on the old version
  patch "tasks/:id", to: "tasks#update"
  # delete task
  delete "tasks/:id", to: "tasks#destroy", as: :tasks_delete
end
