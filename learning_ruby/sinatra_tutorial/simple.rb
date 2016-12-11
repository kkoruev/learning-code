require 'sinatra'

get '/' do
  'Hello world'
end


get '/chris' do
  'Chris'
end


get '/hello/:name' do
  "Hello #{params[:name]}"
end

get '/this/*/is/*' do
  params[:splat].join(' ')
end

get '/fly' do
  erb :form
end

post '/' do
  @name = "#{params[:post][:first_name]}"
  @title = "Hello #{@name}"
  "Nice to meet u, #{@name}."
end
