Rails.application.routes.draw do
  #get 'static_pages/home'
  root 'static_pages#home'
  get '/about' , to: "static_pages#about"
  get '/pricing' , to: "static_pages#pricing"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
