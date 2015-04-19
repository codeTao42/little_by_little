Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root to: "welcome#index"

  post 'ready/:id', to: 'cards#ready', as: 'ready'
  post 'doing/:id', to: 'cards#doing', as: 'doing'
  post 'done/:id', to: 'cards#done', as: 'done'
  
  resources :boards, :cards
end
