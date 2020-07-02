Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE

  namespace :api do
    get "/paramsgamesurl" => "param_examples#name"

    get "/paramsgamesurl/:guess" => "param_examples#guess_game"
  end
end
