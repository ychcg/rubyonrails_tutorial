Rails.application.routes.draw do
  root 'posts#index'
  get 'posts/index'
  get 'posts/new'
  post 'posts/create'
  get 'posts/show/:id' => 'posts#show'
  get 'posts/edit/:id' => 'posts#edit'
  get 'posts/delete/:id' => 'posts#delete'
  post 'posts/update/:id' => 'posts#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
