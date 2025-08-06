# config/routes.rb
Rails.application.routes.draw do
  # Root goes to pages#show as “home”
  root to: 'pages#show', defaults: { page: 'home' }

  # All other “slugs” map to pages#show, e.g. /product, /product/analytics, /company, etc.
  get '(/:page)', to: 'pages#show', as: :page
end
