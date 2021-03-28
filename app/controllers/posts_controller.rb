class PostsController < ApplicationController
  
  def index
    @posts = Post.all.order(fishing_date: "ASC").includes(:user)
  end
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params_post)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def params_post
    params.require(:post).permit(:fish_image, :fish_kind_id, :fish_name, :explanation, :fishing_date, :fishing_time, :weather_id, :municipality_id, :spot, :gimmick, :rod, :reel, :line).merge(user_id: current_user.id)
  end

end