class UsersController < ApplicationController
    skip_before_action :require_login, only: [:create]
    before_action :require_correct_user, except: [:create]
  
    def create
      user = User.create(user_params)
      if user.errors.any?
        flash[:messages] = user.errors.full_messages
        redirect_back(fallback_location: root_path)
      else
        flash[:messages] = ["New User Created"]
        session[:user_id] = user.id
        redirect_to ""
      end
    end

    def show
      @user = current_user
      @purchases = Purchase.all
    end
  
    private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
  
    def require_correct_user
      if current_user != User.find(params[:id])
        redirect_to "/users/#{session[:user_id]}"
      end
    end
end
