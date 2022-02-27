Rails.application.routes.draw do
  devise_for :users
  scope "(:locale)", locale: /en|ja/ do
  resources :users
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
