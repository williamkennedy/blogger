Blogger::Application.routes.draw do
  get "articles/index"
  get "comments/show"
  resources :articles do
    resources :comments
  end
  root to: 'articles#index'#making articles the main page
  
end