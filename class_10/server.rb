require 'sinatra'

get "/" do 

  @blog_posts = [
    {title: "First post", timestamp: "April 11, 2014", content: "This is the first post. \n It is pretty short."},
    {title: "Second Post", timestamp: "April 12, 2014", content: "Here is another post. \r I don't know what to say so I'll keep it short. \n Three lines is enough/"},
    {title: "Third Post", timestamp: "April 13, 2014", content: "This this the third post. \n The reason these are so short is that they are being pulled from the server."}
  ]

  erb :bloglist,  layout: :index 
end

get "/singlepost" do
  @post=[
    {title: "Third Post", timestamp: "April 13, 2014", content: "This this the third post. \n The reason these are so short is that they are being pulled from the server."} 
  ]
  erb :singlepost,  layout: :index 
end

get "/editpost" do
   @post=[
    {title: "Third Post", timestamp: "April 13, 2014", content: "This this the third post. \n The reason these are so short is that they are being pulled from the server."} 
  ] 

  erb :editpost,  layout: :index 
end

get "/newpost" do 

  erb :newpost,  layout: :index 
end