RailsPortfolio::Application.routes.draw do
  root 'pages#index'
  # resources :portfolios
  resources :admin
  
  match '/resume', to: 'pages#resume', via: [:get]
  match '/contact', to: 'pages#contact', via: [:get]
  match '/contact', to: 'pages#create', via: [:post]
  match '/portfolio', to: 'portfolios#index', via: [:get]
  match '/photography', to: 'portfolios#photography', via: [:get]
  match '/photography/:id', to: 'portfolios#show', via: [:get]
  match '/video', to: 'portfolios#video', via: [:get]
  match '/video/:id', to: 'portfolios#show', via: [:get]
  match '/web', to: 'portfolios#web', via: [:get]
  match '/web/:id', to: 'portfolios#show', via: [:get]

  match '/admin', to:'admin#index',via: [:get]
  match '/admin/new', to:'admin#new',via: [:get]
  match '/admin/new', to: 'admin#create', via: [:post]
  match '/admin/auth', to:'admin#auth',via: [:post]
  match '/admin/show', to:'admin#show',via: [:get]
  match '/admin/show/edit/:id', to: 'admin#edit',via: [:get]
  match '/admin', to: 'admin#update', via: [:patch]
  match '/signout', to: 'admin#destroy', via: [:delete]
end
