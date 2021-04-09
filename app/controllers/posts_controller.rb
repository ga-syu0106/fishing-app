class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_user, only: [:edit, :update, :destroy]

  def index
    if params[:municipality_id]
      @municipality_name = Municipality.find(params[:municipality_id])
      @municipality = Post.where(municipality_id: params[:municipality_id])
      @posts = @municipality.paginate(page: params[:page], per_page: 8).order(created_at: 'DESC').includes(:user)
      @post = @posts.first
    elsif params[:fish_kind_id]
      @fish_kind_name = FishKind.find(params[:fish_kind_id])
      @fish_kind = Post.where(fish_kind_id: params[:fish_kind_id])
      @posts = @fish_kind.paginate(page: params[:page], per_page: 8).order(created_at: 'DESC').includes(:user)
      @post = @posts.first
    else
      @posts = Post.paginate(page: params[:page], per_page: 8).order(created_at: 'DESC').includes(:user)
      @post = @posts.first
    end
  end

  def new
    @post = Post.new
    @post_one = @post
    gon.post = @post
  end

  def create
    @post = Post.new(params_post)
    if @post.save
      redirect_to root_path
    else
      @post_one = Post.new
      gon.post = @post_one
      render "posts/new"
    end
  end

  def show
    gon.post = @post
    @comment = Comment.new
    @comments = @post.comments.paginate(page: params[:page], per_page: 8).order(created_at: 'DESC').includes(:user)
  end

  def edit
    gon.post = @post
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
    params.require(:post).permit(:fish_image, :fish_kind_id, :fish_name, :explanation, :fishing_date, :fishing_time,
                                 :weather_id, :municipality_id, :spot, :latitude, :longitude, :gimmick, :rod, :reel, :line).merge(user_id: current_user.id)
  end

  def find_post
    @post = Post.find(params[:id])
  end

  def check_user
    redirect_to root_path unless @post.user.id == current_user.id
  end
end
