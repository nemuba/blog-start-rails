Rails.application.routes.draw do
  root 'blog#index'
  controller :blog do
    get 'about'
    get 'contact'
  end

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
