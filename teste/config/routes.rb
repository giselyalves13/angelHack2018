Rails.application.routes.draw do
  get 'mentor_x/index'

  resources :fila_mentorandos
  resources :fila_mentors
  resources :sessaos
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
