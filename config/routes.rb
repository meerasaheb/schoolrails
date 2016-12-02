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

 
   root :to => "schools#index"
        resources  :schools
   resources  :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
