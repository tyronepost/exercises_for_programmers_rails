# app/config.routes.rb
Rails.application.routes.draw do
  get 'say_hello/new'
  get 'say_hello/show'
  post 'say_hello' => 'say_hello#create'
end
