Rails.application.routes.draw do

  #devise_for :users
	namespace :api, defaults:{ format: :json }do 
	  resources :users, :only => [:show, :create, :update, :destroy]
	  resources :transactions , :only => [:show, :create, :update, :destroy]
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
