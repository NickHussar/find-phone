Rails.application.routes.draw do

  resources :manufacturers

  get 'manufacturers/manufacturers'

  resources :developers

  get 'developers/developers'

  resources :watches do
    resources :comments
  end

  get 'watches/watches'

  resources :tablets do
    resources :comments
  end

  get 'tablets/tablets'

  resources :phones do
    resources :comments
  end

  get 'phones/phones'

  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
