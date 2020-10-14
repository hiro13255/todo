class ApplicationController < ActionController::Base
  include SessionsHelper

  private
  #ログイン済かどうか
  def logged_in_user
    unless is_logged_in?
      redirect_to login_url
    end
  end
end
