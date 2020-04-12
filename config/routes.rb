Rails.application.routes.draw do
  get 'school_classes/new'

  post 'school_classes/create'

  get 'school_classes/show'

  get 'school_classes/edit'

  patch 'school_classes/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
