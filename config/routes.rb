Rails.application.routes.draw do
  root to: "feeds#index"

  resources :feeds, only: %w(index show)
end
