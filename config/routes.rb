Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: "pages#home"
  get 'sitemap', to: 'pages#sitemap', defaults: {format: 'xml'}
  get 'download' => 'downloader#download'
  get "about", to: "pages#about"
  resources :contacts, only: [:new, :create ]
  get 'contacts/sent'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
