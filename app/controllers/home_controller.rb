class HomeController < ApplicationController
  def index
    @like = Like.new
    @comment = Comment.new
    @posts = Post.paginate(page: params[:page])
  end
end
