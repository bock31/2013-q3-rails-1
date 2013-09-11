class SessionsController < ApplicationController

  def new
    render :sessions and return
  end

  def create
    username = params[:username]
    password = params[:password]
    admin    = Admin.where(username: username).first

    if admin == nil
      flash.now[:error] = "Unknown username"
      render :sessions and return
    elsif admin.authenticate(password) == false
      flash.now[:error] = "Wrong password"
      render :sessions and return
    else 
      session[:admin_id] = admin.id
      redirect_to "/admin_houses" and return
    end
  end

  def destroy
    session.clear
    redirect_to "/sessions" and return
  end

end
