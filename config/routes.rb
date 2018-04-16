Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]
  get 'posts/:id/post_data', to: 'posts#post_data'
  # patch 'admin/:id', controller: 'admins', action: :update
  patch 'posts/:id', controller: 'posts', action: :update
end
