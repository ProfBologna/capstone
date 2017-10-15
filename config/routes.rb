Rails.application.routes.draw do

  get '/' => 'rooms#index'
  get '/games/:game_id/rooms' => 'rooms#index'
  get '/games/:game_id/rooms/:id' => 'rooms#show'

  get '/games/:game_id/puzzles/:id' => 'puzzles#show'
  post '/games/:game_id/puzzles/check' => 'puzzles#check'
  post 'games/:game_id/puzzles/:id/answer' => 'puzzles#answer'

  get '/games' => 'games#index'
  post '/games' => 'games#create'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
end
