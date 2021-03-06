Rails.application.routes.draw do
  resources :merchants
  get 'merchants/:id/business', to: "merchants#business"
  get 'merchants/:id/salon', to: "merchants#salon"
  get 'merchants/:id/spa', to: "merchants#spa"
  get 'merchants/:id/barbershop', to: "merchants#barbershop"
  get 'merchants/:id/pet', to: "merchants#pet"
  get 'merchants/:id/classes', to: "merchants#classes"
  get 'merchants/:id/events', to: "merchants#events"
  get 'merchants/:id/waitlist', to: "merchants#waitlist"
  get 'merchants/:id/custom', to: "merchants#custom"
  root 'welcome#index'
end
