Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  devise_for :users, path: 'auth'

  get 'pages/index'
  root "pages#index"


#   Api Routes

  # mount Api::Base => '/'

end
