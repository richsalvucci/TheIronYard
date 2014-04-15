require 'sinatra'
require 'data_mapper'


DataMapper.setup(
  :default,
  'mysql://root@localhost/blogs' 
)

class Blog
  include DataMapper::Resource
    property :id, Serial
    property :title, String
    property :date, String
    property :content, Text
end

DataMapper.finalize.auto_upgrade!


get "/" do 

  @blog_post = Blog.all

  erb :bloglist,  layout: :index 
end

get "/newpost" do 

  erb :newpost,  layout: :index 
end

post "/newpost" do

  @post= Blog.create params[:blog]

 redirect to('/')
end

get "/editpost/:id" do

  @post= Blog.get params[:id]

  erb :editpost,  layout: :index 
end

put "/editpost/:id" do

  @post= Blog.get params[:id]
  @post.update params[:post]

 redirect to('/')
end

delete '/deletepost/:id' do
  puts params
  @post = Blog.get params[:id]
  @post.destroy
  redirect to('/')
end


get "/singlepost" do
  @post = Blog.all.last 
 
  erb :singlepost,  layout: :index 
end