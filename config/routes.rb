Rails.application.routes.draw do
  root 'static#home'
  get 'home' => 'static#home'
  get 'search' => 'static#search'
end
