class UsersController < ApplicationController
  before_action :if_not_admin, only: [:index]
  
  def show
    @films = Film.all.order(created_at: "DESC")
    @user = User.find(params[:id])
  end

  def show_list
    @films = Film.all.order(created_at: "DESC")
    @user = User.find(params[:id])
  end

  def destroy 
    @user = User.find(id: params[:id])
    @user.destroy
    redirect_to("/")
  end

  def index
    @users = User.all
    @user = User.find_by(admin: true)
    @films = Film.all
  end


  def following
    @user  = User.find(params[:id])
    @users = @user.followings
    render 'show_follow'
  end

  def followers
    @user  = User.find(params[:id])
    @users = @user.followers
    render 'show_follower'
  end

  private
  def if_not_admin
      redirect_to root_path unless current_user.admin?
  end
end
