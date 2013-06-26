class SessionsController < ApplicationController
  def new
  end

# this is same as login (aka. signin)
  def create
  	user = User.authenticate(params[:session][:email], params[:session][:password])

  	if user.nil?
  		flash.now[:error] = "Invalid email/password combination."
  		render :new
  	else
  		sign_in user
  		redirect_to user
  		# redirect_to user
  	end

  end
# this is logout (aka. signout)
  def destroy
  	sign_out
  	redirect_to signin_path
  end

end
