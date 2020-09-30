Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :joke_getter, only: [:index]
    end
  end
end
