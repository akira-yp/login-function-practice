Rails.application.routes.draw do
  root 'blogs#index'
  resources :contacts
  get 'sessions/new'
  resources :blogs
  resources :users
  resources :sessions,only:[:new,:create,:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
