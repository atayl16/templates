Rails.application.routes.draw do
  resources :merchants
  get 'merchants/:id/laptop', to: "merchants#laptop"
  get 'merchants/:id/salon', to: "merchants#salon"
  root 'welcome#index'
end
