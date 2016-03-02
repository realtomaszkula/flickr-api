Rails.application.routes.draw do
  root 'static#home'
  get 'recent' => 'static#recent'
  get 'search' => 'static#search'
end
