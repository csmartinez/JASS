Rails.application.routes.draw do
  get 'home/edit'
  get 'home/index'
  get 'home/credits'

  resources :profilevisibles do
    collection do
      get 'new/:id' => 'profilevisibles#new', as: :new
    end
  end
  resources :scenarios do
    collection do
      get 'manage' => 'scenarios#manage', as: :manage
    end
  end
  resources :offerings do
    resources :classrooms
    resources :exercises
    resources :enrollment
    collection do
      get 'manage' => 'offerings#manage', as: :manage
      get 'editExercises/:id' => 'offerings#editExercises', as: :editExercises
      get 'editEnrollment/:id' => 'offerings#editEnrollment', as: :editEnrollment
      get 'editClassrooms/:id' => 'offerings#editClassrooms', as: :editClassrooms
    end
  end
  resources :exercises do
    resources :scenarios
    collection do
      get 'manage' => 'exercises#manage', as: :manage
    end
  end
  resources :progressions do
    collection do
      get 'user_progress/:id' => 'progressions#user_progress', as: :user_progress
    end
  end
  resources :classrooms do
    collection do
      get 'manage' => 'classrooms#manage', as: :manage
      get 'all' => 'classrooms#all', as: :all
      get 'virtual' => 'classrooms#virtual', as: :virtual
    end
  end
  resources :profiles do
    collection do
      get 'all' => 'profiles#all', as: :all
    end
  end
  resources :classprofiles
  resources :enrollments
  root 'home#index'
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :users do
    collection do
      post :generate_faculty_key
      post :generate_admin_key
      get 'users/:id' => 'users#show', as: :user
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
