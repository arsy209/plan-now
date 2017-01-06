class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @invites = user_invitations(current_user).sort_by(&:date)
    if @invites == nil
      "no events"
    else
      @invites
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    if @user.save
      redirect_to user_path(@user)
    end
  end
end
