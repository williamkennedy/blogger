Blogger::Application.routes.draw do
  get "articles/index"
  
  root to: 'articles#index'#making articles the main page
  resources :articles
end