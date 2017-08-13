# app/config.routes.rb
Rails.application.routes.draw do
  root 'home#index'

  # Exercise 1: Saying Hello
  get 'say_hello/new'
  get 'say_hello/show'
  post 'say_hello' => 'say_hello#create'

  # Exercise 2: Counting characters
  get 'counting_characters' => 'counting_characters#index'
  post 'counting_characters' => 'counting_characters#create'

  # Exercise 3: Printing Quotes
  get 'printing_quotes' => 'printing_quotes#index'
  post 'printing_quotes' => 'printing_quotes#create'
  delete 'printing_quotes' => 'printing_quotes#destroy'

  get 'printing_quotes_v2' => 'printing_quotes_v2#index'
  post 'printing_quotes_v2' => 'printing_quotes_v2#create'
end
