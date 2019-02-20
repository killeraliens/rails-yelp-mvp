Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create] #/restaurants/:restaurant_id/reviews(.:format)
  end
end
