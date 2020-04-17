class UsersController < ApplicationController
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
end
