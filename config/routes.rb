Rails.application.routes.draw do

  resources :restaurants do
    # GET '/restaurants/top'
      collection do
        get 'top'
      end
    # GET /restaurants/42/chef
      member do
        get 'chef'
      end
    # GET /restaurants/42/reviews/new
    # POST /restaurants/42/reviews
    # resources :reviews, only: [:new, :create, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  resources :reviews, only: [:new, :create, :index]


end
