require "sidekiq/web"

Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Sidekiq Web UI, only for admins.
  authenticate :user, lambda { |user| user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
