class AuthController < ApplicationController

  def login
  	@user=User.new
  end

  def logout
  	@user=nil
    session[:user_id]=nil
  end

  def auth_user
  	user=User.find_by_email(user_params[:email])
  	if user
  		flash[:notice]='user is not nil'
  		if user.authenticate(user_params[:password])
  			session[:user_id]=user.id
  			redirect_to user_url(user.id),notice: 'Welcome to home!'
  		else
  			flash[:alert]="Invalid password/email,check!"
  		end
  	else
  		redirect_to new_user_url
  	end
  end

  private
   def user_params
      params.require(:user).permit(:email,:password)
    end

    def set_user
      @user = User.find(params[:id])
    end
end
