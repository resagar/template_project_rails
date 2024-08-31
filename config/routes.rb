Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  get '/' => "landing_page#index", as: "landing_page"
  root "landing_page#index"

  post '/payment_received' => "webhook_payment#payment_received", as: "payment_received"


#   Api Routes

  # mount Api::Base => '/'

end
