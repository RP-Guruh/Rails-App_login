class UserController < ApplicationController

  def index
    @member = Member.new
  end

  def signup
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to :controller => 'home' ,:action => 'index'
    else
      render 'index'
    end
  end

  def cek_login

    @user = Member.find_by_email(params[:email])
    if params[:email].present? && params[:password].present?

      found_user = Member.where(:email => params[:email], :password => params[:password]).first
      if found_user
        session[:user_id] = @user.id
        redirect_to :controller => 'home' ,:action => 'beranda'

      else
        flash[:error] = " Email/Password Salah Serta Pastikan Anda Telah Mendaftar "
        redirect_to :controller => 'user' ,:action => 'index'
     end
    end

  end

  def say

  end

  def logout
     session.delete(:user_id)
     redirect_to :controller => 'user', :action => 'index'
  end

  private
  def member_params
   params.require(:subject).permit(:firstname, :lastname, :email, :password)
  end

end








    #member = Member.find_by_email(params[:email])
     # if member && member.authenticate(params[:password])
      ## render plain: 'SUKSES LOGIN'
      #else
       # render plain: 'Gagal'
#      end
