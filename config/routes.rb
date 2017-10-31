Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  get '/d' => 'works#detailview'
  get '/d2' => 'works#detailview_2'
  get '/d3' => 'works#detailview_3'
  get '/d4' => 'works#detailview_4'
  resources :posts, except: [:show] do
    post "/like", to: "likes#like_toggle"
    resources :comments, only: [:create, :destroy]
  end
end
