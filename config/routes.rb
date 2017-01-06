Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :thanhviens do
    resources :diachis
    resources :dongiaohangs

    resources :giohangs do
      resources :chitietgiohangs
    end
    resource :bosuutaps do
      resources :chitietbosutaps
    end
  end

  resources :monans do
    resources :danhgias
  end
   
  resources :loai


  match 'auth/:provider/facebook', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  get '/dangnhap', to: 'sessions#new'
  post '/dangnhap', to: 'sessions#create'
  delete '/dangxuat', to: 'sessions#destroy'

  get '/lienhe', to: 'welcome#lienhe'
  get '/gioithieu', to: 'welcome#gioithieu'
  get '/home', to: "monans#index"
  get '/thanhvien/edit' , to: 'welcome#user'

  root "monans#index"
end
