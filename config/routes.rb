Rails.application.routes.draw do
  resources :comments
  resources :tags
	mount Ckeditor::Engine => '/ckeditor'
  devise_for :admins
  resources :articles
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
