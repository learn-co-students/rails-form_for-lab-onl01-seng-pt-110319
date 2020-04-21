Rails.application.routes.draw do

  resources :school_classes, only: [:show, :new, :update, :create, :edit]
  resources :students, only: [:show, :new, :update, :create, :edit]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
