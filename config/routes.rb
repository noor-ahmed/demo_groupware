Rails.application.routes.draw do

  get 'welcomes/about'
  get 'welcomes/contact'
  root "welcomes#home"

end
