Rails.application.routes.draw do

  get 'requests/index'

  get 'requests/new'

  get 'requests/show'

  get 'welcomes/about'
  get 'welcomes/contact'
  root "welcomes#home"

end
