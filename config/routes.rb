Blogger::Application.routes.draw do
  
  root to: 'articles#index'#making articles the main page
  get "comments/show"
  resources :articles do
    resources :comments
  end
  
  resources :tags
end