Rails.application.routes.draw do
  get 'home/edit'
  get 'home/index'

  resources :scenarios
  resources :offerings do
    collection do
      get 'manage' => 'offerings#manage', as: :manage
    end
  end
  resources :exercises do
    collection do
      get 'manage' => 'exercises#manage', as: :manage

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
