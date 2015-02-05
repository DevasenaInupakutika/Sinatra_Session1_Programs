require 'rubygems'
require 'sinatra'

get '/calculator' do
'
<form action="/add" method="post" accept-charset="utf-8">
        <input type="text" name="n1" value="" id="n1"> +
        <input type="text" name="n2" value="" id="n2">
        <input type="submit" value="Add">
</form>

<form action="/subtract" method="post" accept-charset="utf-8">
        <input type="text" name="n1" value="" id="n1"> -
        <input type="text" name="n2" value="" id="n2">
        <input type="submit" value="Subtract"> 
</form>
'
end


post '/add' do
  "#{params[:n1]} plus #{params[:n2]} = #{params[:n1].to_i + params[:n2].to_i}
  <a href='/calculator'>Back</a>"
end

post '/subtract' do
  "#{params[:n1]} minus #{params[:n2]} = #{params[:n1].to_i - params[:n2].to_i}
  <a href='/calculator'>Back</a>"
end 


