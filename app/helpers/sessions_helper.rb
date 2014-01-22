module SessionsHelper
  def sign_in(user, remember_me)
    remember_token = User.new_remember_token
    if remember_me == "1"
      cookies.permanent[:remember_token] = remember_token
    else
      cookies[:remember_token] = remember_token
    end
    user.update_attribute(:remember_token, User.encrypt(remember_token))
    self.current_user = user
  end
    
  def signed_in?
    !current_user.nil?
  end
    
  def current_user=(user)
    @current_user = user
  end
    
  def current_user
    return nil unless cookies[:remember_token]
    remember_token = User.encrypt(cookies[:remember_token])
    @current_user ||= User.find_by(remember_token: remember_token)
  end
    
  def sign_out
    current_user.update_attribute(:remember_token,
                                  User.encrypt(User.new_remember_token))
    cookies.delete(:remember_token)
    self.current_user = nil
  end
end
