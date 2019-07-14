Rails.application.routes.draw do
  root to: "cocktails#index"

  resources :cocktails, only: [:index, :new, :create, :show] do # this includes the 7 routes
    resources :doses, only: [ :create ]
     # nesting doses into cocktails and
     # u specify which ones you want to show
  end

  resources :doses, only: :destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
