class PostsController < ApplicationController
  before_action :find_post, only:[:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_user, only:[:edit,:update,:destroy]

  def index
    if params[:municipality_id]
      @municipality = Post.where(municipality_id: params[:municipality_id])
      @posts = @municipality.paginate(page: params[:page], per_page: 8).order(created_at: "DESC").includes(:user)
      @post = @posts.first
    elsif params[:fish_kind_id]
      @fish_kind = Post.where(fish_kind_id: params[:fish_kind_id])
      @posts = @fish_kind.paginate(page: params[:page], per_page: 8).order(created_at: "DESC").includes(:user)
      @post = @posts.first
    else
    @posts = Post.paginate(page: params[:page], per_page: 8).order(created_at: "DESC").includes(:user)
    end
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

  def show
  end

  def edit
  end

  def update
    if @post.update(params_post)
      redirect_to post_path
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private
  def params_post
    params.require(:post).permit(:fish_image, :fish_kind_id, :fish_name, :explanation, :fishing_date, :fishing_time, :weather_id, :municipality_id, :spot, :gimmick, :rod, :reel, :line).merge(user_id: current_user.id)
  end


  def find_post
    @post = Post.find(params[:id])
  end

  def check_user
    redirect_to root_path unless @post.user.id == current_user.id
  end
end