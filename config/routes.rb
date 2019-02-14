Rails.application.routes.draw do
  get 'home/index'
  get 'home/edit'
  resources :scenarios
  resources :offerings
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
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
