Rails.application.routes.draw do
  resources :users
  resources :events do
    resources :attends
  end
end
