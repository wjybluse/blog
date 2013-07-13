class SessionsController < ApplicationController
	
	def create

	end

	def login
	end

	def destroy
		session[:user_id]=nil
		redirect_to root_url,notice: 'Good Bye!'
	end

end
