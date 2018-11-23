Rails.application.routes.draw do
  resources :contacts
  resources :blogs do
    collection do
      post :confirm
    end
  end
end