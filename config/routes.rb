Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  scope "(:locale)", locale: /en|ja/ do
  resources :users
  end
  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
