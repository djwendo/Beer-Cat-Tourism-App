class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(user_param)
    render json: @user
  end

  private

    def user_param
      params.require(:user).permit(:name,
                                  :email,
                                  :username,
                                  :password_hash,
                                  :preference_ABV,
                                  :preference_SRM,
                                  :preference_IBU,
                                  :preference_adventurous,
                                  :preference_sour
                                  )
  end
end
