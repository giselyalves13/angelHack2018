Rails.application.routes.draw do
  get 'mentores_buscados/index'

  get 'session/new'
  get 'mentor_x/home'

  get 'mentor_x/index'
	root 'mentor_x#index'
  post 'mentor_x/busca_mentor'
  get 'mentor_x/busca_mentor'
  resources :fila_mentorandos
  resources :fila_mentors
  resources :sessaos
  resources :users

  get    'sign_in'   => 'session#new'
  post   'sign_in'   => 'session#create'
  delete 'sign_out'  => 'session#destroy'

  get '/signup' => 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 