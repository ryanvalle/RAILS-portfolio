RailsPortfolio::Application.routes.draw do
  root 'pages#index'
  resources :portfolios
  
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
end
