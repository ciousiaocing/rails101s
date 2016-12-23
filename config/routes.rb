Rails.application.routes.draw do
  devise_for :users
  root 'groups#index' #這行代表把localhost:3000/groups 這個網址設成首頁
  resources :groups do
    member do
      post :join
      post :quit
    end

    resources :posts
  end

  namespace :account do
    resources :groups
    resources :posts
  end
end
