Rails.application.routes.draw do
  resources :masjids do
    resources :packs
  end
  get 'charges/create'
  get 'charges/new'
  devise_for :users, :path => '',
                    :path_names=> {:sign_in=>"login", :sign_out=>"logout", :edit=>"profil"},
                    :controller=>{:confirmations=>"confirmation"}
  resources :users, only: [:show, :edit]  #get 'static_pages/home'
  root 'static_pages#home'
  get '/about' , to: "static_pages#about"
  get '/pricing' , to: "static_pages#pricing"
  get '/masjidhome', to:"static_pages#masjidhome"
  get '/invest', to: "static_pages#invest"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
