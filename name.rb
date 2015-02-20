require 'sinatra'

get '/name' do
    name = "Devasena"
    "Hello #{name}"
end    
