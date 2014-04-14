require 'sinatra'
require 'data-mapper'

DataMapper.setup




get '/' do 
  erb :root
end