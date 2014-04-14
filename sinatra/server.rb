require 'sinatra'
require 'faker'

get '/' do
	erb :root, layout: :index
end

get '/root' do
  erb :root, layout: :index
end

get '/about' do
  @about = Faker::Lorem.paragraphs(25)
  
  erb :about, layout: :index

end

get '/boards' do

  @surfboard=[
    {surfboard:'/images/shortboard.jpg', display: "Shortboards"},
    {surfboard:"/images/longboard.jpg", display: "Longboards"},
    {surfboard:'/images/sup.jpg', display: "Stand Up Paddle Board"}
  ]
  erb :boards, layout: :index
end

get '/hardgoods' do
  @hardgoods=[
    {hardgood:'/images/wetsuit.jpg', display: "Wetsuits"},
    {hardgood:"/images/boots.jpg", display: "Boots"},
    {hardgood:'/images/leash.jpg', display: "Accessories"}
  ]
  erb :hardgoods, layout: :index
end

get '/softgoods' do
  @softgoods=[
    {softgood:'/images/tshirt.jpg', display: "T-Shirts"},
    {softgood:"/images/boardshorts.jpg", display: "Boardshorts"},
  ]
  erb :softgoods, layout: :index
end