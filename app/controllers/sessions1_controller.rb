class SessionsController < ApplicationController
  
  def new
    flash.clear
  end

  def create
    flash.clear

    @thanhvien = Thanhvien.find_by(email: params[:session][:email].downcase)
    
    if @thanhvien && @thanhvien.authenticate(params[:session][:password])
      flash[:success] = 'Đăng nhập thành công!'
      session[:user_id] = @thanhvien.id
      log_in @thanhvien
      redirect_to @thanhvien
    else
      flash[:danger] = 'Email hoặc mật khẩu không khớp!'
      render 'new'  
    end

  end

  def destroy
    log_out
    redirect_to root_url
  end

end
