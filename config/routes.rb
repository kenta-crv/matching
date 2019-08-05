Rails.application.routes.draw do

#company_devise
  devise_for :companies, :controllers => {
    :registrations => 'companies/registrations',
    :sessions => 'companies/sessions'
  }
  resource :company, :only => [:show, :edit, :update, :destroy]
  get 'company/list' => 'companies#list'

#user_devise
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }
  resource :user, :company, :only => [:show, :edit, :update, :destroy]
  get 'user/list' => 'users#list'

#likes
  resource :user, :company, :only => [:show]  do
    resources :likes, only: [:create, :destroy]
  end

#front
  root to: 'top#index'
  get '/owner' => 'top#owner' #オーナー
  get '/job' => 'top#job' #求職者
  get '/list' => 'top#list'
  #get '/company' => 'top#company'
  get '/privacy' => 'top#privacy' #プライバシーポリシー

#posts
  resources :posts

#contact
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/contact' => 'contact#index'
  post '/confirm' => 'contact#confirm'
  post '/thanks' => 'contact#thanks'
end
