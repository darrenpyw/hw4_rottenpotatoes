class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id]=user.id
      session[:name]=user.name
      redirect_to movies_url
    else
      flash[:notice] = "Invalid user/password"
      render 'new'
    end
  end

  def destroy
    session[:user_id]=nil
    session[:name]=nil
    redirect_to movies_url, notice: "Logged out"
  end

end
