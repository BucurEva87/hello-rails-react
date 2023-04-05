Rails.application.routes.draw do
  namespace :api do
    get "/messages/random-greeting", to: "messages#random_greeting"
  end

  # Defines the root path route ("/")
  root "messages#index"
end
