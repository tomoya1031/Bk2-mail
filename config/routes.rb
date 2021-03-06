Rails.application.routes.draw do
  

  devise_for :users, :controllers => {
 :registrations => 'users/registrations'
}
  root "homes#top"
  get "home/about", to: 'homes#about'
  resources :books, only: [:create, :index, :show, :destroy , :edit, :update]
  resources :users, only: [:index, :show, :edit, :update]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
