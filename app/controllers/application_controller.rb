class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user,:show_user_posts

  def current_user
  	if session[:user_id]
  		@current_user||=User.find(session[:user_id])
  	else
  		@current_user=nil
  	end
  end

  def show_user_posts
    Post.where(user_id:@current_user.id)
  end

end
