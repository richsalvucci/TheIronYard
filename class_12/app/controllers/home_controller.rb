class HomeController < ApplicationController
  def index
    @posts_on_blog = Blog.all
  end


end
