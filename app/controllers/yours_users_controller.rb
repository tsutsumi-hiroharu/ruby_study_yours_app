class YoursUsersController < ApplicationController
  def index
    @yours_user = YoursUser.find_by(user_id: current_user.id)
    p @yours_user
  end

  def show
  end

  def new
    @user = current_user.id
    @yours_user = YoursUser.new
  end

  def edit
  end

  def create
    @yours_user = YoursUser.new(yours_user_params)
    p current_user.id
    p @yours_user
    @yours_user[:user_id] = current_user.id
    @yours_user[:reserve_count] = 0
    @yours_user.save
    redirect_to yours_users_url, notice: "yoursログイン情報を登録しました。"    
  end

  private

  def yours_user_params
    params.require(:yours_user).permit(:login_id, :password, :slack, :start_time, :end_time)
  end
end
