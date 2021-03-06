class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]
  before_action :check_user, only: [:edit, :update]
  def show
    @posts = Post.where(user_id: params[:id]).paginate(page: params[:page],
                                                       per_page: 8).order(fishing_date: 'DESC').includes(:user)
    @post = @posts.first
  end

  def edit
  end

  def update
    if @user.update(params_user)
      redirect_to user_path
    else
      render :edit
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def params_user
    params.require(:user).permit(:nickname, :user_image, :gender, :municipality_id, :age, :history, :style_id, :profile)
  end

  def check_user
    redirect_to root_path unless @user.id == current_user.id
  end
end
