require 'sinatra'

get '/' do
  "Hello, world!"
end

get '/about' do
  @corgi_pups = rand(30) + 1
  @corgi_pups.times { puts "puppy!" }
  erb :about
end

get '/greetings' do
  erb :greetings
end

post '/custom_greetings' do
  @greeting = params[:greeting] # greeting to equal whatever user inputs and to re-write the entire page containing greeting in greetings.erb
  erb :greetings
end

get '/greetings/:name' do
  "Hey #{params[:name]}!"
end

get '/cities/:city/greetings/:name' do
  "Hey #{params[:name]}! Welcome to the #{params[:city]} greeting page!"
end
