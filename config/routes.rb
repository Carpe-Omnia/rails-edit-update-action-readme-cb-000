Rails.application.routes.draw do
  resources :articles, only: %i[index  new create]
  get 'article/:id', to: 'articles#show', as: :article
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'articles/:id', to: 'articles#update'
end
