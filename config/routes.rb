Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  resources :hypotheses
  resources :problems
  resources :projects
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  get '/projects_drafts', to: 'projects#index_drafts'
  get '/projects/:id/publish', to: 'projects#publish'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"
end
