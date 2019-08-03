Rails.application.routes.draw do

  devise_for :managements, :controllers => {
    :registrations => 'managements/registrations',
    :sessions => 'managements/sessions'
  }
  #devise_scope :managements do
  #  get "managements/:id", :to => "managements/registrations#detail"
  #  resources :likes, only: [:create, :destroy]
  #end

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }
  #devise_scope :users do
  #  get "users/:id", :to => "users/registrations#detail"
  #end

  root to: 'top#index'
  get '/owner' => 'top#owner' #オーナー
  get '/job' => 'top#job' #求職者
  get '/list' => 'top#list'
  #get '/company' => 'top#company'
  get '/privacy' => 'top#privacy' #プライバシーポリシー

  get 'company/list' => 'companies#list'
  get 'mypage/list' => 'mypages#list'

  resources :posts

  resource :mypage
   resource :detail

  resource :company

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/contact' => 'contact#index'
  post '/confirm' => 'contact#confirm'
  post '/thanks' => 'contact#thanks'
end
