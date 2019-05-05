Rails.application.routes.draw do
  root to: 'chung#index'
  get 'index' => 'chung#index'
  get 'new' => 'chung#new'
  get '/transfer' => 'chung#transfer'
  post 'accounts' => 'chung#create'
end
