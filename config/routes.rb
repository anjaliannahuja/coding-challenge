Rails.application.routes.draw do
  #set homepage to index
  get 'posts/index'
  
  # nest comments within posts resources
  resources :posts do
    resources :comments
  end
  # set homepage to index
  root 'posts#index'
end
