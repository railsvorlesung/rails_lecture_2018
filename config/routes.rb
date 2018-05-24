Rails.application.routes.draw do
  devise_for :users
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  #


  scope('(/:locale)') do
    resources :blog_posts do
      member do
        get :pdf
      end
    end

    resource :locales

    # get 'welcome'=>  'welcome#index'
    match '/welcome' => 'welcome#index', :via => [:get, :post]

    match '/names' => 'names#form', :via => [:get, :post]
  end

  root 'blog_posts#index'

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
