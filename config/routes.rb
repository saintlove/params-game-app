Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get "/name_in_caps" => 'coconuts#name_query'
    get '/a_name' => 'coconuts#a_game'
    get '/string_guessing' => 'coconuts#string_guessing'
    get '/guessing_game/:guess' => 'coconuts#guessing_game' #symbol MUST BE SAME AS CONTROLLER ARRAY
  end
end
