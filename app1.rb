# in app.rb

require 'sinatra'

get '/' do
  erb :form
end

post '/' do
  @name = params[:user_name]
  @age  = params[:user_age]

  erb :welcome
end
