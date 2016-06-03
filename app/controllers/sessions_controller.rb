class SessionsController < ApplicationController

  def new





  end

  def create
    # using the params to find the user if exists

    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      # login

      # session global hash that rails give you
      session[:user_id] = user.id

      redirect_to '/profile'

    else

      # wrong stuff
      redirect_to '/login'
    end




    # check the pass with this user


  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'

  end
end
