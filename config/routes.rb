EventProject::Application.routes.draw do

  root :to => "parties#index"

  resources :parties
  resources :socialviews

end
