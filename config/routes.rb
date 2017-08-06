# app/config.routes.rb
Rails.application.routes.draw do
  get 'say_hello/new'
  get 'say_hello/show'
  post 'say_hello' => 'say_hello#create'

  get 'counting_characters' => 'counting_characters#index'
  post 'counting_characters' => 'counting_characters#create'

  get 'printing_quotes' => 'printing_quotes#index'
  post 'printing_quotes' => 'printing_quotes#create'

  delete 'printing_quotes' => 'printing_quotes#destroy'
end
