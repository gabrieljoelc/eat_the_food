Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :see_for_yourselves, only: %i[index show]

  resources :distinct_email_tests, only: %i[index create]

  root 'pages#home'
end
