class HomeController < ApplicationController
  def index
  end

  def beranda
    @current_user ||= Member.find(session[:user_id]) if session[:user_id]
  end
end
