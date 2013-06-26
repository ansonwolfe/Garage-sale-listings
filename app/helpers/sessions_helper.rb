module SessionsHelper

  def sign_in(user)
  	# when created new user, also set new session
    session[:user_id] = user.id
    session[:user_name] = user.name
    self.current_user = user
  end
  
  # setter method
  def current_user=(user)
    @current_user = user
  end

  # getter method
  def current_user
  	# if session id is available, find the session
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def signed_in?
    !current_user.nil?
  end

  def sign_out
    session[:user_id] = nil
    self.current_user = nil
  end

  def current_user?(user)
    user == current_user 
  end

  def deny_access
    redirect_to signin_path, :notice => "Please sign in to access this page."
  end

end
