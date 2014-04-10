require 'sinatra'
require 'faker'

get '/' do
	erb :index
end

get '/about' do
  erb :about, layout: :index
end

get '/boards' do
  erb :boards, layout: :index
end

get '/hardgoods' do
  erb :hardgoods, layout: :index
end

get '/softgoods' do
  erb :softgoods, layout: :index
end