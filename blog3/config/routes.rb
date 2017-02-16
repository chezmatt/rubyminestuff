Rails.application.routes.draw do
  get 'blogs/index'

  get 'blogs/new'

  get 'blogs/show'

  get 'blogs/edit'

  get "/", :controller => 'blogs', :action =>'index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :blogs
end
