Rails.application.routes.draw do
  resources :projects
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  get '/projects_drafts', to: 'projects#index_drafts'
  get '/projects/:id/publish', to: 'projects#publish'

  delete '/projects/:id/image', to: 'projects#delete_project_image'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"
end
