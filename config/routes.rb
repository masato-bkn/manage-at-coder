Rails.application.routes.draw do
  resources :problems, only:[:create]
  resources :categorys, only:[:create]
end
