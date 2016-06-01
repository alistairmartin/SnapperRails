class UsersController < ApplicationController



  def create
      users=User.new
      users.name = params[:name]
      users.email = params[:email]
      users.password = params[:password]
      users.image_url = params[:image_url]
      users.description = params[:description]


      if users.save
        redirect_to '/login'
      else
        redirect_to '/'
      end

  end
end
#
#   def create
#     # using the params to find the user if exists
#
#     user = User.find_by(email: params[:email])
#
#     if user && user.authenticate(params[:password])
#       # login
#
#       # session global hash that rails give you
#       session[:user_id] = user.id
#
#       redirect_to '/somewhere'
#
#     else
#
#       # wrong stuff
#       render :new
#     end
#
#
#
#
#     # check the pass with this user
#
#
#   end
#
#   def destroy
#     session[:user_id] = nil
#   end
# end
