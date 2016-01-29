Rails.application.routes.draw do

  resources :requests
  get 'welcomes/about'
  get 'welcomes/contact'
  root "welcomes#home"

end
