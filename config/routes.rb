Rails.application.routes.draw do
  resources :problems, only:[:create]
end
