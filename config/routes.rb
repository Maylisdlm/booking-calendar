Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'calendars/show'
  root to: 'calendars#show'
  resources :guides, :calendars
end
