Rails.application.routes.draw do
  root to: 'homes#top'
  resources :categories, only: [:index]
  resources :regulations, only: [:show]
  resources :abouts, only: [:show]

  namespace :admin do
    resources :categories
    resources :sound_effects
    resources :mypage, only: [:show, :edit, :update]
    resource :admins, only: [:show, :edit, :update]
  end

  devise_for :admin, controllers: {#
    sessions: 'admin/sessions'#
  }

   devise_scope :admin do
    get '/admins/sign_out' => 'devise/sessions#destroy'
    get '/admin', to: 'devise/registrations#new'
   end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
