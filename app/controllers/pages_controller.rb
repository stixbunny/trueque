class PagesController < ApplicationController
  def index
    @posts = Post.all.order("RANDOM()").limit(10)
  end
end
