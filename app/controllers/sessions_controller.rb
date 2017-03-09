class SessionsController < ApplicationController

  def new
  	#
  end

  def create 
 	if params[:name].nil? || params[:name].empty?
 		redirect_to login_path
 	else 
 	    session[:name] = params[:name]
    	redirect_to '/'
 	end
  end
  
  def destroy 
  	session.delete :name
  	redirect_to '/'
  end

end
