Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index' #to always go to the index page if a page is not specified
  resources :lists, only: [ :index, :show, :new, :create ] do
    resources :bookmarks, only: [ :new, :create, ]
  end
  resources :bookmarks, only: [ :destroy ]
end
