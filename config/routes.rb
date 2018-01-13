Rails.application.routes.draw do

	  root 'static#index'

  resources :comments
  resources :tags
	mount Ckeditor::Engine => '/ckeditor'
  devise_for :admins
  resources :articles
  resources :categories


  get 'static/diy', page: "diy"
  get 'static/gadget_news', page: "gadget_news"
  get 'static/gamers_hub', page: "gamers_hub"
  get 'static/latest_news' ,page: "latest_news"
  get 'static/tech_news' ,page: "tech_news"

  get 'static/about', page: "about"
  
  get 'dashboard/dashboard', page: 'dashboard'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
