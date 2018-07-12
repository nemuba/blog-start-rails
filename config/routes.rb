Rails.application.routes.draw do
  root 'blog#index'

  controller :blog do
    get 'about'
    get 'contact'
    get 'blog/posts/:id' => 'blog#show_post', as: 'show'
    post 'blog/posts/:id' => 'blog#create'
  end

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
