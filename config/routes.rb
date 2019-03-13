Rails.application.routes.draw do
  get 'home/edit'
  get 'home/index'

  resources :profilevisibles do
    collection do
      get 'new/:id' => 'profilevisibles#new', as: :new
    end
  end
  resources :scenarios
  resources :offerings do
    collection do
      get 'manage' => 'offerings#manage', as: :manage
      get 'visibility/:id' => 'offerings#visibility', as: :visibility
    end
  end
  resources :exercises do
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
  root 'home#index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'users/:id' => 'users#show', as: :user

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
