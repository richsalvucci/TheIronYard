require 'sinatra'
require 'data-mapper'

DataMapper.setup(
  :default,
  'mysql://root@localhost/blogs' 

class Blog
  include DataMapper::Resource
  property :id, Serial
  property :first_name, String
  property :last_name, String
end




get '/' do 
  erb :root
end