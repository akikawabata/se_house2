Rails.application.routes.draw do
  devise_for :admin, controllers: {#
    sessions: 'admin/sessions'#
  }
  root to: 'homes#top'
  namespace :admin do
    resources :categories
    resources :sound_effects
    resources :mypage, only: [:show, :edit, :update]
    resource :admins, only: [:show, :edit, :update]
    post 'categories/:id' => 'categories#create'
  end
  resources :categories, only: [:index]
  resources :regulations, only: [:show]
  resources :abouts, only: [:show]


  devise_scope :admin do
    get '/admin/sign_out' => 'admin/sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
