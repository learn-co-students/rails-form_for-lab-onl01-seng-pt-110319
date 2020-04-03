Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :school_classes, only: [:index, :show, :new, :update, :create, :edit]
  resources :students, only: [:index, :new, :create, :show, :update, :edit]
end

