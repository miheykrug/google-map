Rails.application.routes.draw do
  root to: "maps#show"
  match '/', to: 'maps#show', via: [:get, :post]
end
