RailsSelectAllBugDemo::Application.routes.draw do
  resources :products

  resources :companies

  root 'demo#index'
  get 'demo' => 'demo#bug', as: :bug
end
