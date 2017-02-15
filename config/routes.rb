Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :edit, :new, :show] do
    resources :reviews, only: [:index, :new, :create] do
    end
  end
end
