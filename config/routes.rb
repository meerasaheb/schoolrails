Rails.application.routes.draw do
  # get 'students/index'

  # get 'students/new'

  # get 'students/show'

  # get 'students/edit'

  # get 'students/create'

  # get 'students/update'

  # get 'students/destroy'

  # get 'schools/index'

  # get 'schools/new'

  # get 'schools/show'

  # get 'schools/edit'

  # get 'schools/create'

  # get 'schools/update'

  # get 'schools/destroy'

  resources  :schools
   resources  :students
   root :to => "schools#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
