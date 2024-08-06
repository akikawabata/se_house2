Rails.application.routes.draw do
  namespace :admin do
    get 'mypage/show'
    get 'mypage/edit'
    get 'mypage/update'
  end
  namespace :admin do
    get 'sound_effects/index'
    get 'sound_effects/new'
    get 'sound_effects/create'
    get 'sound_effects/show'
    get 'sound_effects/edit'
    get 'sound_effects/update'
    get 'sound_effects/destroy'
  end
  namespace :admin do
    get 'categories/index'
    get 'categories/new'
    get 'categories/create'
    get 'categories/show'
    get 'categories/edit'
    get 'categories/update'
  end
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
