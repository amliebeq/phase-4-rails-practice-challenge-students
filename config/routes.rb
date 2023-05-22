Rails.application.routes.draw do
  resources :students, only: [:index, :destroy, :create, :update]
  resources :instructors, only: [:index, :destroy, :create, :update]
end
