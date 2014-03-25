RailsPortfolio::Application.routes.draw do
  root 'pages#index'

  match '/resume', to: 'pages#resume', via: [:get]
end
